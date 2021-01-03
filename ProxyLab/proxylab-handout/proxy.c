#include <stdio.h>
#include "csapp.h"
/* Recommended max cache and object sizes */
#define MAX_CACHE_SIZE 1049000
#define MAX_OBJECT_SIZE 102400
#define CACHE_SIZE 10
#define INF 0x3f3f3f3f

//#define DEBUG
/* You won't lose style points for including this long line in your code */
static const char *user_agent_hdr = "User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:10.0.3) Gecko/20120305 Firefox/10.0.3\r\n";
static const char *connect_header = "Connection: close\r\n";
static const char *proxy_header = "Proxy-Connection: close\r\n";

void doit(int fd);
void read_requesthdrs(rio_t *rp, char *req_header_buf);
void parse_uri(char *uri, char *hostname, char *path, int *port);
void serve_static(int fd, char *filename, int filesize);
void get_filetype(char *filename, char *filetype);
void serve_dynamic(int fd, char *filename, char *cgiargs, char *headers);
void clienterror(int fd, char *cause, char *errnum,
                 char *shortmsg, char *longmsg);
void build_header_send_to_server(char *header, char *hostname, char *path, int port, rio_t *client_rio);
int connect_server(char *hostname, int port);

/* Cache Part*/
void cache_init();
int cache_find(int fd, char *url);
int cache_remove();
void cache_LRU(int index);
void cache_uri(char *uri, char *buf);
void readPre(int x);
void readAfter(int x);
void print_cahce();

typedef struct
{
    char cache_object[MAX_OBJECT_SIZE];
    char cache_url[MAXLINE];
    int isempty, LRU;

    int rcnt, wcnt;
    sem_t rcntmutex, wcntmutex;
    sem_t workmutex;
} cache_block;

typedef struct
{
    cache_block cacheset[CACHE_SIZE];
    int cache_cnt;
} Cache;

static Cache cache;

void *thread(void *vargp)
{
    int connfd = *((int *)vargp);
    Pthread_detach(pthread_self());
    Free(vargp);
    doit(connfd);
    Close(connfd);
    return NULL;
}

void sigchld_handler(int sig)
{ // reap all children
    int bkp_errno = errno;
    while (waitpid(-1, NULL, WNOHANG) > 0)
        ;
    errno = bkp_errno;
}

int main(int argc, char **argv)
{
    signal(SIGPIPE, SIG_IGN);
    signal(SIGCHLD, sigchld_handler);

    cache_init();
    int listenfd, *connfd;
    char hostname[MAXLINE], port[MAXLINE];
    socklen_t clientlen;
    struct sockaddr_storage clientaddr;
    pthread_t tid;

    /* Check command line args */
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
        *connfd = Accept(listenfd, (SA *)&clientaddr, &clientlen); //line:netp:tiny:accept
        Getnameinfo((SA *)&clientaddr, clientlen, hostname, MAXLINE,
                    port, MAXLINE, 0);
        printf("Accepted connection from (%s, %s)\n", hostname, port);
        Pthread_create(&tid, NULL, thread, connfd);
    }
    Close(listenfd);
}
/* $end tinymain */

/*
 * doit - handle one HTTP request/response transaction
 */
/* $begin doit */
void doit(int fd)
{
    int server_fd;
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], path[MAXLINE];
    char header_send_to_server[MAXLINE];
    int port;
    rio_t rio, server_rio;

    /* Read request line and headers */
    Rio_readinitb(&rio, fd);
    if (!Rio_readlineb(&rio, buf, MAXLINE)) //line:netp:doit:readrequest
        return;
    //printf("%s", buf);

    sscanf(buf, "%s %s %s", method, uri, version); //line:netp:doit:parserequest
    if (strcasecmp(method, "GET"))
    { //line:netp:doit:beginrequesterr
        clienterror(fd, method, "501", "Not Implemented",
                    "Tiny does not implement this method");
        return;
    } //line:netp:doit:endrequesterr

    int cache_index = cache_find(fd, uri);
    if (cache_index != -1)
    {
        cache_LRU(cache_index);
        return;
    }

    char origin_uri[MAXLINE];
    strcpy(origin_uri, uri);

    parse_uri(uri, hostname, path, &port);
    puts("parse finished!");
#ifdef DEBUG
    printf("%s %s %d\n", hostname, path, port);
#endif

    build_header_send_to_server(header_send_to_server, hostname, path, port, &rio);

    server_fd = connect_server(hostname, port);

    if (server_fd < 0)
    {
        printf("Error: connect to server failed\n");
        return;
    }
    Rio_readinitb(&server_rio, server_fd);
    Rio_writen(server_fd, header_send_to_server, strlen(header_send_to_server));

    char cachebuf[MAX_OBJECT_SIZE];
    memset(cachebuf, 0, sizeof(cachebuf));
    int bufsize = 0;
    size_t len;
    while ((len = Rio_readlineb(&server_rio, buf, MAXLINE)) > 0)
    {

#ifdef DEBUG
        printf("Received %ld bytes from the remote server\n", len);
#endif

        bufsize += len;
        if (bufsize < MAX_OBJECT_SIZE)
        {
            //注意这里也需要用memcpy,因为cache可能是二进制文件
            memcpy(cachebuf + bufsize - len, buf, len);
        }

        Rio_writen(fd, buf, len);
    }
    Close(server_fd);

    if (bufsize < MAX_OBJECT_SIZE)
    {
        cache_uri(origin_uri, cachebuf);
    }
}
/* $end doit */

void build_header_send_to_server(char *header, char *hostname, char *path, int port, rio_t *client_rio)
{
    char buf[MAXLINE], request_header[MAXLINE], host_header[MAXLINE], other_header[MAXLINE];
//    printf("path -> %s\n",path);
    sprintf(request_header, "GET %s HTTP/1.0\r\n", path);
    sprintf(host_header, "Host: %s:%d\r\n", hostname, port);
    sprintf(other_header, "%s%s%s", user_agent_hdr, connect_header, proxy_header);
    strcat(request_header, host_header);
    strcat(request_header, other_header);
//    sprintf(request_header,"%s%s%s",request_header,host_header,other_header);
    printf("Start Success!\n\n\n");
    while (Rio_readlineb(client_rio, buf, MAXLINE) > 0)
    {
    //    puts("+1s");
        if (strcmp(buf, "\r\n") == 0)
            break;
        printf("buf -> %s\n",buf);
        /*ignore repeated header*/
        if (strstr(buf, "Host:") != NULL)
            continue;
        if (strstr(buf, "User-Agent:") != NULL)
            continue;
        if (strstr(buf, "Connection:") != NULL)
            continue;
        if (strstr(buf, "Proxy-Connection:") != NULL)
            continue;
    //    strcat(request_header, buf);
        sprintf(request_header,"%s%s",request_header,buf);
//        printf("buf finished!\n");
    }
//    puts("Finished!");
    strcat(request_header, "\r\n");
//    sprintf(request_header,"%s%s",request_header,"\r\n");
    sprintf(header, "%s", request_header);
    
    printf("%s\n", header);

    return;
}

int connect_server(char *hostname, int port)
{
    char port_name[10];
    sprintf(port_name, "%d", port);
    return Open_clientfd(hostname, port_name);
}

/*
 * read_requesthdrs - read HTTP request headers
 */
/* $begin read_requesthdrs */
void read_requesthdrs(rio_t *rp, char *req_header_buf)
{
    char buf[MAXLINE];
    req_header_buf[0] = '\0';

    Rio_readlineb(rp, buf, MAXLINE);
    printf("%s", buf);
    strcat(req_header_buf, buf);
    while (strcmp(buf, "\r\n"))
    { //line:netp:readhdrs:checkterm
        Rio_readlineb(rp, buf, MAXLINE);
        printf("%s", buf);
        strcat(req_header_buf, buf);
    }
    return;
}
/* $end read_requesthdrs */

/*
 * parse_uri - parse URI into filename and CGI args
 *             return 0 if dynamic content, 1 if static
 */
/* $begin parse_uri */
void parse_uri(char *uri, char *hostname, char *path, int *port)
{
    *port = 80;
    char *st = strstr(uri, "//");
    st = (st != NULL) ? st + 2 : uri;
    char *pt = strstr(st, ":");
    if (pt != NULL)
    {
        *pt = '\0'; //seprate the string
        sscanf(st, "%s", hostname);
        sscanf(pt + 1, "%d%s", port, path);
    }
    else
    {
        pt = strstr(st, "/");
        if (pt != NULL)
        {
            *pt = '\0';
            sscanf(st, "%s", hostname);
            *pt = '/';
            sscanf(pt, "%s", path);
        }
        else
        {
            sscanf(st, "%s", hostname);
        }
    }
    return;
}
/* $end parse_uri */

/*Cache Part*/
void cache_init()
{
    for (int i = 0; i < CACHE_SIZE; i++)
    {
        cache.cacheset[i].LRU = 0;
        cache.cacheset[i].isempty = 1;
        Sem_init(&cache.cacheset[i].rcntmutex, 0, 1);
        Sem_init(&cache.cacheset[i].workmutex, 0, 1);
        cache.cacheset[i].rcnt = 0;
        cache.cacheset[i].wcnt = 0;
    }
}

void readPre(int x)
{
    P(&cache.cacheset[x].rcntmutex);
    cache.cacheset[x].rcnt++;
    if (cache.cacheset[x].rcnt == 1)
        P(&cache.cacheset[x].workmutex);
    V(&cache.cacheset[x].rcntmutex);
}

void readAfter(int x)
{
    P(&cache.cacheset[x].rcntmutex);
    cache.cacheset[x].rcnt--;
    if (cache.cacheset[x].rcnt == 0)
        V(&cache.cacheset[x].workmutex);
    V(&cache.cacheset[x].rcntmutex);
}

void writePre(int x)
{
    P(&cache.cacheset[x].workmutex);
}

void writeAfter(int x)
{
    V(&cache.cacheset[x].workmutex);
}

int cache_find(int fd, char *url)
{
    int i;
    for (i = 0; i < CACHE_SIZE; i++)
    {
        readPre(i);
        if (cache.cacheset[i].isempty == 0 && strcmp(cache.cacheset[i].cache_url, url) == 0)
        {
            Rio_writen(fd, cache.cacheset[i].cache_object, MAX_OBJECT_SIZE);
            readAfter(i);
            break;
        }
        readAfter(i);
    }
    if (i == CACHE_SIZE)
        return -1;
    return i;
}

int cache_remove()
{
    int max_LRU = -1;
    int record = 0;
    for (int i = 0; i < CACHE_SIZE; i++)
    {
        readPre(i);
        if (cache.cacheset[i].isempty == 1)
        {
            record = i;
            readAfter(i);
            break;
        }
        if (cache.cacheset[i].LRU > max_LRU)
        {
            max_LRU = cache.cacheset[i].LRU;
            record = i;
        }
        readAfter(i);
    }
    return record;
}

void cache_LRU(int index)
{
    for (int i = 0; i < CACHE_SIZE; i++)
    {
        writePre(i);
        if (i == index)
        {
            cache.cacheset[i].LRU = 0;
        }
        else if (cache.cacheset[i].isempty == 0)
        {
            cache.cacheset[i].LRU++;
        }
        writeAfter(i);
    }
}

void cache_uri(char *url, char *buf)
{
    int num = cache_remove();
    writePre(num);
    strcpy(cache.cacheset[num].cache_url, url);
    memcpy(cache.cacheset[num].cache_object, buf, MAX_OBJECT_SIZE);
    cache.cacheset[num].isempty = 0;
    cache.cacheset[num].LRU = 0;
    writeAfter(num);
    cache_LRU(num);
}

void print_cahce()
{
    for (int i = 0; i < CACHE_SIZE; i++)
    {
        if (cache.cacheset[i].isempty == 0)
            printf("cache[%d] %s\n", i, cache.cacheset[i].cache_url);
    }
}

/*
 * clienterror - returns an error message to the client
 */
/* $begin clienterror */
void clienterror(int fd, char *cause, char *errnum,
                 char *shortmsg, char *longmsg)
{
    char buf[MAXLINE], body[MAXBUF];

    /* Build the HTTP response body */
    sprintf(body, "<html><title>Tiny Error</title>");
    sprintf(body, "%s<body bgcolor="
                  "ffffff"
                  ">\r\n",
            body);
    sprintf(body, "%s%s: %s\r\n", body, errnum, shortmsg);
    sprintf(body, "%s<p>%s: %s\r\n", body, longmsg, cause);
    sprintf(body, "%s<hr><em>The Tiny Web server</em>\r\n", body);

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    rio_writen(fd, buf, strlen(buf));
    rio_writen(fd, body, strlen(body));
}
/* $end clienterror */