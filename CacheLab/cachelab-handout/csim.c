#include "cachelab.h"
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <limits.h>
#include <getopt.h>
#include <string.h>
int hit_cnt,miss_cnt,eviction_cnt;
int should_print;
char t[100];
typedef struct
{
    unsigned long tag;    // tag of cache
    int valid;  // valid bit 
    int cnt;    //  count num of used
}Line;
typedef Line* Set;
typedef Set* Cache;
int s,S,E,b;// S组数 E每组行数 b block位数
Cache cache;
void print_usage(char **argv)
{
    printf("Usage: %s [-hv] -s <num> -E <num> -b <num> -t <file>\n",*argv);
    puts("Options:");
    puts("  -h         Print this help message.");
    puts("  -v         Optional verbose flag.");
    puts("  -s <num>   Number of set index bits.");
    puts("  -E <num>   Number of lines per set.");
    puts("  -b <num>   Number of block offset bits.");
    puts("  -t <file>  Trace file.");
    puts("\nExamples:");
    printf("  linux>  %s -s 4 -E 1 -b 4 -t traces/yi.trace\n",*argv);
    printf("  linux>  %s -v -s 8 -E 2 -b 4 -t traces/yi.trace\n",*argv);
    exit(0);
}
void init_cache()
{
    cache=(Cache)malloc(8*S);
    if(!cache)
    {
        puts("Malloc Error!");
        exit(-1);
    }
    for(int i=0;i<S;i++)
    {
        cache[i]=(Set)malloc(16*E); //需要分配16个字节，这里是给每一个Line分配空间
        if(!cache[i])
        {
            puts("Malloc Error!");
            exit(-1);
        }
        for(int j=0;j<E;j++)
        {
            cache[i][j].cnt=0;
            cache[i][j].tag=-1;
            cache[i][j].valid=0;
        }
    }
}
void update(unsigned long address)
{
    unsigned long tag=address>>(b+s);
    int mx=-1;// ensure that record will always be changed
    Line* record;
    Set cache_set;
    Line* cache_line;
    cache_set=cache[ (address>>b) & ( (1ULL<<s) - 1 )];
    for(int i=0;i<E;i++)
    {
        cache_line=&cache_set[i];
        if(cache_line->tag==tag&&cache_line->valid)
        {
            if(should_print)    printf(" hit");
            hit_cnt++;
            cache_line->cnt=0;
            return;
        }
    }
    if(should_print)    printf(" miss");
    miss_cnt++;
    for(int i=0;i<E;i++)
    {
        cache_line=&cache_set[i];
        if(!cache_line->valid)
        {
            cache_line->tag=tag;
            cache_line->valid=1;
            cache_line->cnt=0;
            return;
        }
        else if(cache_line->cnt>mx)
        {
            mx=cache_line->cnt;
            record=cache_line;
        }
    }
    if(should_print)    printf(" eviction");
    eviction_cnt++;
    record->tag=tag;
    record->cnt=0;
}
void update_cnt()
{
    for(int i=0;i<S;i++)
        for(int j=0;j<E;j++)
            if(cache[i][j].valid)   cache[i][j].cnt++;
}
void solve()
{
    FILE *fp=fopen(t,"r");
        if(!fp)
        {
            puts("Open Error");
            exit(-1);
        }
    char s;
    unsigned long address;
    int size;
    while(fscanf(fp," %c %lx,%d\n",&s,&address,&size)>0)
    {
        if(s==' ')  continue;
        if(should_print) printf("%s %lx,%d",&s,address,size);
        if(s=='L')  update(address);
        if(s=='S')  update(address);
        if(s=='M')
        {
            update(address);
            update(address);
        }
        if(should_print)    puts("");
        update_cnt();
    }
    fclose(fp);
}
void freecache()
{
    for(int i=0;i<S;i++)    free(cache[i]);
    free(cache);
}
int main(int argc, char* argv[])
{
    int opt;
    while(1)
    {
        opt=getopt(argc,argv,"hvs:E:b:t:");
        if(opt==-1) break;
        switch(opt)
        {
            case 'h':
            {
                print_usage(argv);
                break;
            }
            case 'v':
            {
                should_print=1;
                break;
            }
            case 's':
            {
                s=atoi(optarg);
                S=1<<s;
                break;
            }
            case 'E':
            {
                E=atoi(optarg);
                break;
            }
            case 'b':
            {
                b=atoi(optarg);
                break;
            }
            case 't':
            {
                strcpy(t,optarg);
                break;
            }
            default:
            {
                print_usage(argv);
                break;
            }
        }
    }
    if( s<=0 || b<=0 || E<=0 )    return -1;
    init_cache();
    solve();
    printSummary(hit_cnt,miss_cnt,eviction_cnt);
    freecache();
    return 0;
}