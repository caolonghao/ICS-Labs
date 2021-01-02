/*
 * Proxy with cache
 * made by LiuSiyuan 1900013051
 * 
 * This is a proxy that receives request from client and build new ones 
 * which are leter sent to the server, then starts to deliver messages between
 * the client and the server. And it also has a cache so that the repeated
 * data can be stored and there will be no need to visit server again.
 * 
 */


#include "csapp.h"

/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define CACHE_OBJS_SIZE 10      /* 10 cachelines */

/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *c_hdr = "Connection: close\r\n";
static const char *p_hdr = "Proxy-Connection: close\r\n";

typedef struct 
{
    int readcnt;                /* reader count */
    int stamp;                  /* time stamp */
    int valid;
    sem_t mutex;                /* protects accesses to readcnt */
    sem_t w;                    /* protects accesses to this cacheline */
    char uri[MAXLINE];
    char obj[MAX_OBJECT_SIZE];
} CacheLine;
typedef struct 
{
    CacheLine objs[CACHE_OBJS_SIZE];
} Cache;
Cache cache;

/* function prototype for cache */
void init_cache();
int check_cache(int fd, char *url);
void save_cache(char *url, char *buf);
void readP(int i);
void readV(int i);
void writeP(int i);
void writeV(int i);

/* function prototype for proxy */
void doit(int fd);
void clienterror(int fd, char *cause, char *errnum,
         char *shortmsg, char *longmsg);
void parse_uri(char *uri, char *hostname, char *filename, int *port);
void build_requesthdrs(rio_t *rp, char *newreq, char *hostname, char *port);
void *thread(void *vargp);


int main(int argc, char **argv)
{
    signal(SIGPIPE, SIG_IGN);//ignore sigpipe
    init_cache();

    int listenfd, *connfd;
    pthread_t tid;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;

    if (argc != 2)
    {
        fprintf(stderr, "usage: %s <port>\n", argv[0]);
        exit(1);
    }

    listenfd = Open_listenfd(argv[1]);
    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Malloc(sizeof(int));
        *connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen);
        Getnameinfo((SA *) &clientaddr, clientlen, hostname, MAXLINE,
                port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        Pthread_create(&tid, NULL, thread, connfd);
    }
    Close(listenfd);
}

/*
 * Thread routine
 */
void *thread(void *vargp)
{
    int connfd = *((int *)vargp);
    Pthread_detach(Pthread_self());
    Free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}

/*
 * do what a proxy does
 */
void doit(int fd)
{
    int serverfd;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    rio_t rioclient, rioserver;
    char hostname[MAXLINE], filename[MAXLINE], port[MAXLINE];
    char request[MAXLINE], uricpy[MAXLINE];
    int portt;

    Rio_readinitb(&rioclient, fd);
    if (!Rio_readlineb(&rioclient, buf, MAXLINE))//read client's request line
        return;

    sscanf(buf, "%s %s %s", method, uri, version);
    if (strcasecmp(method, "GET"))//GET only
    {
        clienterror(fd, method, "501", "Not Implemented",
                "Proxy Server does not implement this method");
        return;
    }
    strcpy(uricpy, uri);

    if (check_cache(fd, uri))//check out if stored in cache
        return;

    //form the http request for the server 
    parse_uri(uri, hostname, filename, &portt);
    sprintf(port, "%d", portt);
    sprintf(request, "GET %s HTTP/1.0\r\n", filename);
    build_requesthdrs(&rioclient, request, hostname, port); 

    serverfd = Open_clientfd(hostname, port);
    if(serverfd < 0)
    {
        printf("Connection failed!\n");
        return;
    }

    Rio_readinitb(&rioserver, serverfd);
    Rio_writen(serverfd, request, strlen(request));
   
    size_t n, size = 0;
    char obj[MAX_OBJECT_SIZE];
    memset(obj, 0, sizeof(obj));
    while ((n = Rio_readlineb(&rioserver, buf, MAXLINE)))
    {
        size += n;
        if (size < MAX_OBJECT_SIZE)//check out if size exceeds objmax
        {
            memcpy(obj + size - n, buf, n);
        }
        //printf("Proxy received %ld bytes\n", n);
        Rio_writen(fd, buf, n);
    }
    
    if (size < MAX_OBJECT_SIZE)//if doesn't store in cache
        save_cache(uricpy, obj);
    Close(serverfd);
}

/*
 * break down the uri into hostname filename and port
 */ 
void parse_uri(char *uri, char *hostname, char *filename, int *port)
{
    *port = 80;//default port 80
    char *ptr1 = strstr(uri, "//");
    if(ptr1)
        ptr1 += 2;
    else
        ptr1 = uri;

    char *ptr2 = strstr(ptr1, ":");
    if(ptr2 != NULL)
    {
        *ptr2 = '\0';
        sscanf(ptr1, "%s", hostname);
        sscanf(ptr2 + 1, "%d%s", port, filename);
    }
    else
    {
        ptr2 = strstr(ptr1, "/");
        if(ptr2 == NULL)
            sscanf(ptr1, "%s", hostname);
        else
        {
            *ptr2 = '\0';
            sscanf(ptr1, "%s", hostname);
            *ptr2 = '/';
            sscanf(ptr2, "%s", filename);
        }
    }
}

/*
 * returns an error to the client
 */
void clienterror(int fd, char *cause, char *errnum,
         char *shortmsg, char *longmsg)
{
    char buf[MAXLINE], body[MAXBUF];

    sprintf(body, "<html><title>Proxy Error</title>");
    sprintf(body, "%s<body bgcolor=""ffffff"">\r\n", body);
    sprintf(body, "%s%s: %s\r\n", body, errnum, shortmsg);
    sprintf(body, "%s<p>%s: %s\r\n", body, longmsg, cause);
    sprintf(body, "%s<hr><em>The Proxy Web server</em>\r\n", body);

   
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    Rio_writen(fd, buf, strlen(buf));
    Rio_writen(fd, body, strlen(body));
}

/*
 * build the new request headers for the server
 */
void build_requesthdrs(rio_t *rio, char *request, char *hostname, char* port)
{
    char buf[MAXLINE];
    sprintf(request, "%sHost: %s:%s\r\n", request, hostname, port);
    sprintf(request, "%s%s%s%s", request, user_agent_hdr, c_hdr, p_hdr);
    while(Rio_readlineb(rio, buf, MAXLINE) > 0)
    {
        if (!strcmp(buf, "\r\n"))
            break;
        //ignore the clients's repeated headers
        if (strstr(buf,"Host:") != NULL) 
            continue;
        if (strstr(buf,"User-Agent:") != NULL)
            continue;
        if (strstr(buf,"Connection:") != NULL) 
            continue;
        if (strstr(buf,"Proxy-Connection:") != NULL)
            continue;
        sprintf(request,"%s%s", request, buf);
    }
    sprintf(request, "%s\r\n", request);
}

/*
 * initiate the cache
 */
void init_cache()
{
    for(int i = 0; i < CACHE_OBJS_SIZE; i++)
    {
        cache.objs[i].readcnt = 0;
        cache.objs[i].stamp = -1;
        cache.objs[i].valid = 0;
        sem_init(&(cache.objs[i].mutex), 0, 1);
        sem_init(&(cache.objs[i].w), 0, 1);
        memset(cache.objs[i].uri, 0, sizeof(cache.objs[i].uri));
        memset(cache.objs[i].obj, 0, sizeof(cache.objs[i].obj));
    }
}

/*
 * go through checklines to see if the data from the uri is stored 
 * and renew time stamp
 * if yes deliver it to the client and return a positive number
 * if not return 0
 */
int check_cache(int fd, char *uri)
{
    int pos = -1;
    for(int i = 0; i < CACHE_OBJS_SIZE; i++)
    {
        readP(i);
        if((cache.objs[i].valid && !strcmp(cache.objs[i].uri, uri)))
        {
            pos = i;
            rio_writen(fd, cache.objs[i].obj, MAX_OBJECT_SIZE);
            readV(i);
            break;
        }
        readV(i);
    }
    //renew time stamp
    for(int i = 0; i < CACHE_OBJS_SIZE; i++)
    {
        writeP(i);
        if (pos == i)
            cache.objs[i].stamp = -1;
        if(cache.objs[i].valid)
            cache.objs[i].stamp++;
        writeV(i);
    }
    return pos + 1;
}

/*
 * find an empty or the lru cacheline to store the data 
 * and renew time stamp 
 */ 
void save_cache(char *uri, char *obj)
{
    int Max = -1, pos = 0;
    for(int i = 0; i < CACHE_OBJS_SIZE; i++)
    {
        readP(i);
        if(!cache.objs[i].valid)//found an empty one
        {
            pos = i;
            readV(i);
            break;
        }
        if(cache.objs[i].stamp > Max)//trying to find the lru one
        {
            pos = i;
            Max = cache.objs[i].stamp;
        }
        readV(i);
    }

    writeP(pos);
    strcpy(cache.objs[pos].uri, uri);
    memcpy(cache.objs[pos].obj, obj, MAX_OBJECT_SIZE);
    cache.objs[pos].valid = 1;
    cache.objs[pos].stamp = -1;
    writeV(pos);
    //renew time stamp
    for(int i = 0; i < CACHE_OBJS_SIZE; i++)
    {
        writeP(i);
        if(cache.objs[i].valid)
            cache.objs[i].stamp++;
        writeV(i);
    }
}

/*
 * package function before read
 */ 
void readP(int i)
{
    P(&(cache.objs[i].mutex));
    cache.objs[i].readcnt++;
    if(cache.objs[i].readcnt == 1) 
        P(&(cache.objs[i].w));
    V(&(cache.objs[i].mutex));
}

/*
 * package function after read
 */ 
void readV(int i)
{
    P(&(cache.objs[i].mutex));
    cache.objs[i].readcnt--;
    if(cache.objs[i].readcnt == 0) 
        V(&(cache.objs[i].w));
    V(&(cache.objs[i].mutex));
}

/*
 * package function before write
 */ 
void writeP(int i)
{
    P(&(cache.objs[i].w));
}

/*
 * package function after write
 */ 
void writeV(int i)
{
    V(&(cache.objs[i].w));
}