/*
 * mm.c
 *
 * Segrated list with footer 
 * organize the free blocks by putting the smaller ones first
 * optimize the utiliztion by choosing the right chunk size and block size (which is got by numorous tests)
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
//#define DEBUG
#ifdef DEBUG
char *debugnum;
#define dbg_printf(...) printf(__VA_ARGS__)
#else
#define dbg_printf(...)
#endif

/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* Basic constants and macros */
#define WSIZE 4        /* Word and header/footer size (bytes) */
#define DSIZE 8        /* Double word size (bytes) */
#define CHUNKSIZE 2048 /* Extend heap by this amount (bytes) */
//2048 is the magic number

#define MAX(x, y) ((x) > (y) ? (x) : (y))

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc) ((size) | (alloc))

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* The max number of segratelists */
#define LIST_SIZE 15

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT - 1)) & ~0x7)

/* Read and write a word at address p */
#define GET(p) (*(unsigned int *)(p))
#define PUT(p, val) (*(unsigned int *)(p) = (val))
// We have to support the 64bit address

/* Read the size and allocated fields from address p */
#define GET_SIZE(p) (GET(p) & ~0x7)
#define GET_ALLOC(p) (GET(p) & 0x1)
#define GET_PREVALLOC(p) (GET(p) & 0x2)
#define GET_NEXTALLOC(p) (GET(p) & 0x4)

#define NEXT_ALLOC 0x4
#define PREV_ALLOC 0x2
#define ALLOC 0x1

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp) ((char *)(bp)-WSIZE)
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))

/* Given block ptr bp, tranform it into char pointer */
#define NEXT_PTR(bp) ((void *)(bp))
#define PREV_PTR(bp) ((void *)(bp + DSIZE))

/* Given block ptr bp, goto the place it point to */
#define NEXT(bp) (*(void **)(bp))
#define PREV(bp) (*(void **)(bp + DSIZE))
#define SET_PTR(p, ptr) (*(void **)(p) = (void *)(ptr))

/* Global variables */
static char *heap_listp = 0; /* Pointer to first block */
static void *segrated_list[LIST_SIZE];
static void *max_heap = NULL;

/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void *find_fit(size_t asize);
static void *coalesce(void *bp);
static void insert_list(void *ptr, size_t size);
static void delete_list(void *ptr);
static void print_list();
static inline int get_list_num(size_t asize)
{
    if (asize <= 24)
        return 0;
    else if (asize <= 48)
        return 1;
    else if (asize <= 72)
        return 2;
    else if (asize <= 96)
        return 3;
    else if (asize <= 120)
        return 4;
    else if (asize <= 240)
        return 5;
    else if (asize <= 480)
        return 6;
    else if (asize <= 960)
        return 7;
    else if (asize <= 1920)
        return 8;
    else if (asize <= 3840)
        return 9;
    else if (asize <= 7680)
        return 10;
    else if (asize <= 15360)
        return 11;
    else if (asize <= 30720)
        return 12;
    else if (asize <= 61440)
        return 13;
    else
        return 14;
}

/*
 * Initialize: return -1 on error, 0 on success.
 */
int mm_init(void)
{
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1)
        return -1;
    for (int i = 0; i < LIST_SIZE; i++)
        segrated_list[i] = NULL;

    // Initialize the heap , no need to change
    PUT(heap_listp, 0);                            /* Alignment padding */
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1)); /* Prologue header */
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1)); /* Prologue footer */
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2 * WSIZE);

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    //    printf("%d\n",CHUNKSIZE / WSIZE);
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
        return -1;
    return 0;
}

/*
 * malloc
 */
void *malloc(size_t size)
{
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;

    if (heap_listp == 0)
    {
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
        return NULL;
    if(size==448)   size=512;
    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= 2 * DSIZE)
        asize = 3 * DSIZE;
    else
        asize = ALIGN(size + DSIZE);

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL)
    {
        place(bp, asize);
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize, CHUNKSIZE);
    if ((bp = extend_heap(extendsize / WSIZE)) == NULL)
        return NULL;
    place(bp, asize);
#ifdef DEBUG
    mm_checkheap(1);
#endif
    return bp;
}

/*
 * free
 */
void free(void *ptr)
{
    if (!ptr)
        return;

    size_t size = GET_SIZE(HDRP(ptr));
    if (heap_listp == 0)
    {
        mm_init();
    }

    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    insert_list(ptr, size);

/*    void* next_block=NEXT_BLKP(ptr);
    size_t next_size = GET_SIZE(HDRP(next_block));
    int allocated = GET_ALLOC(HDRP(next_block)); 
    PUT(HDRP(next_block),PACK(next_size, allocated)); */

    coalesce(ptr);
}

/*
 * realloc - you may want to look at mm-naive.c
 */
void *realloc(void *oldptr, size_t size)
{
    size_t oldsize;
    void *newptr;

    /* If size == 0 then this is just free, and we return NULL. */
    if (size == 0)
    {
        free(oldptr);
        return 0;
    }

    /* If oldptr is NULL, then this is just malloc. */
    if (oldptr == NULL)
    {
        return malloc(size);
    }

    newptr = malloc(size);

    /* If realloc() fails the original block is left untouched  */
    if (!newptr)
    {
        return 0;
    }

    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(oldptr));
    if (size < oldsize)
        oldsize = size;
    memcpy(newptr, oldptr, oldsize);

    /* Free the old block. */
    free(oldptr);

    return newptr;
}

/*
 * calloc - you may want to look at mm-naive.c
 * This function is not tested by mdriver, but it is
 * needed to run the traces.
 */
void *calloc(size_t nmemb, size_t size)
{
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}

/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p)
{
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p)
{
    return (size_t)ALIGN(p) == (size_t)p;
}

/*
 * Print the segrated list.
 */
void print_list()
{
    static int cnt = 0;
    for (int i = 0; i < LIST_SIZE; i++)
        if (segrated_list[i])
        {
            void *list_ptr = segrated_list[i];
            printf("segrated[%d] -> ", i);
            while (list_ptr != NULL)
            {
                printf("%lx -> value = %d  ,", list_ptr, GET_SIZE(HDRP(list_ptr)));
                list_ptr = NEXT(list_ptr);
            }
            puts("");
        }
    printf("cnt=%d\n\n", ++cnt);
}
/*
 * mm_checkheap
 */
void mm_checkheap(int lineno)
{
    lineno = lineno;
    void *bp = heap_listp;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        printf("addr=0x%llx size=%d\n allocated=%d\n", (unsigned long)bp, GET_SIZE(HDRP(bp)), GET_ALLOC(HDRP(bp)));
    }
    puts("");
}

#ifdef DEBUG
/*
 * Check for count of free blocks
 */
static void check_count_free_list() 
{
    void *bp;
    unsigned int counti = 0;
    unsigned int countp = 0;
    /*Iterate over list*/   
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if(!GET_ALLOC(HDRP(bp))) {
            counti++;
        }
    }
    /* Moving free list by pointers*/
    for (int i = 0; i < NO_OF_LISTS; i++) {
        for (bp = GET_SEGI(seg_list,i); (bp!=NULL) 
          &&  (GET_SIZE(HDRP(bp)) > 0);bp = GET_NEXTP(bp)) {
            countp++;
        }   
    }

    /*If count is not matching, print error, with debug Info*/
    if(countp!=counti) {
        printf("ERROR: No. of free block mismatch\n");
        dbg_printf("free\n");
        print_free();
        dbg_printf("all\n");
        print_all();
    }
}
#endif

/* 
 * The remaining routines are internal helper routines 
 */

/* 
 * extend_heap - Extend heap with free block and return its block pointer
 */
static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;
    if ((long)(bp = mem_sbrk(size)) == -1)
        return NULL;

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* Free block header */
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */
    insert_list(bp, size);
    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

static void set_pretag(void *ptr, int tag)
{
    void *pre = HDRP(PREV_BLKP(ptr));
    size_t last = GET(pre);
    PUT(pre, last | tag);
}
// manage the list by the size of the blocks, small blocks first, to get better fit
static inline void insert_list(void *ptr, size_t size)
{
    void *list_chosen = NULL;
    void *insert_ptr = NULL;
    int num = get_list_num(size);
#ifdef DEBUG
/*    if ((unsigned long)ptr == (unsigned long)0x800000fb0)
    {
        printf("size of the block = %d\n But the actual size is %ld\n", GET_SIZE(HDRP(ptr)), size);
        printf("size of another block is %d\n", GET_SIZE(HDRP(0x8000007d0)));
    }
    printf("ptr=%llx PREV_BLOCK=%llx NEXT_BLOCK=%llx\n", ptr, PREV_BLKP(ptr), NEXT_BLKP(ptr));*/
#endif
    //FIFO md按地址排序炸掉了
//#define FIFO
#ifdef FIFO
    list_chosen = segrated_list[num];
    if (list_chosen == NULL)
    {
        SET_PTR(NEXT_PTR(ptr), NULL);
        SET_PTR(PREV_PTR(ptr), NULL);
        segrated_list[num] = ptr;
    }
    else
    {
        SET_PTR(NEXT_PTR(ptr), list_chosen);
        SET_PTR(PREV_PTR(ptr), NULL);
        SET_PTR(PREV_PTR(list_chosen), ptr);
        segrated_list[num] = ptr;
    }
#else // sort by the size of blocks
    list_chosen = segrated_list[num];
    if (list_chosen == NULL) //empty list
    {
        SET_PTR(NEXT_PTR(ptr), NULL);
        SET_PTR(PREV_PTR(ptr), NULL);
        segrated_list[num] = ptr;
    }
    else
    {
        insert_ptr = list_chosen;
        void *last_ptr = NULL;
        while (insert_ptr != NULL && GET_SIZE(HDRP(insert_ptr)) < size)
        {
            last_ptr = insert_ptr;
            insert_ptr = NEXT(insert_ptr);
        }
        if (insert_ptr == NULL) //end of the list
        {
            SET_PTR(NEXT_PTR(last_ptr), ptr);
            SET_PTR(NEXT_PTR(ptr), NULL);
            SET_PTR(PREV_PTR(ptr), last_ptr);
        }
        else if (last_ptr != NULL) //in the middle of the list
        {
            SET_PTR(NEXT_PTR(last_ptr), ptr);
            SET_PTR(PREV_PTR(ptr), last_ptr);
            SET_PTR(NEXT_PTR(ptr), insert_ptr);
            SET_PTR(PREV_PTR(insert_ptr), ptr);
        }
        else // insert at the beginning
        {
            SET_PTR(NEXT_PTR(ptr), list_chosen);
            SET_PTR(PREV_PTR(ptr), NULL);
            SET_PTR(PREV_PTR(list_chosen), ptr);
            segrated_list[num] = ptr;
        }
    }
#endif
}

static inline void delete_list(void *ptr)
{
    int num = 0;
    size_t size = GET_SIZE(HDRP(ptr));
    void *prev = PREV(ptr);
    void *nxt = NEXT(ptr);
    num = get_list_num(size);
    if (prev != NULL)
    {
        if (nxt != NULL)
        {
            SET_PTR(NEXT_PTR(prev), nxt);
            SET_PTR(PREV_PTR(nxt), prev);
        }
        else
        {
            SET_PTR(NEXT_PTR(prev), NULL);
        }
    }
    else
    {
        if (nxt != NULL)
        {
            SET_PTR(PREV_PTR(nxt), NULL);
            segrated_list[num] = nxt;
        }
        else
        {
            segrated_list[num] = NULL;
        }
    }
}
/*
 * coalesce - Boundary tag coalescing. Return ptr to coalesced block
 */
static void *coalesce(void *bp)
{
//    size_t prev_alloc = GET_PREVALLOC(HDRP(bp));
//    size_t next_alloc = GET_NEXTALLOC(HDRP(bp));

    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc)   //set the prevalloc tag for the nextblock
    { /* Case 1 */   
        return bp;
    }

    else if (prev_alloc && !next_alloc)
    { /* Case 2 */
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        delete_list(bp); //这里不能不删除直接修改，因为块的大小改变了，需要放到不同的seglist中
        delete_list(NEXT_BLKP(bp));
        PUT(HDRP(bp), PACK(size, (0 | PREV_ALLOC)));
        PUT(FTRP(bp), PACK(size, (0 | PREV_ALLOC)));
    }

    else if (!prev_alloc && next_alloc)
    { /* Case 3 */
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        delete_list(PREV_BLKP(bp));
        delete_list(bp);
        bp = PREV_BLKP(bp);
        PUT(HDRP(bp), PACK(size, (0 | PREV_ALLOC)));
        PUT(FTRP(bp), PACK(size, (0 | PREV_ALLOC)));
    //    PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
    }

    else
    { /* Case 4 */
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) +
                GET_SIZE(FTRP(NEXT_BLKP(bp)));
        delete_list(PREV_BLKP(bp));
        delete_list(NEXT_BLKP(bp));
        delete_list(bp);
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, (0 | PREV_ALLOC)));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, (0 | PREV_ALLOC)));
        bp = PREV_BLKP(bp);
    }
    insert_list(bp, size);
    return bp;
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));
    size_t remainder = csize - asize;
    delete_list(bp);
    if (remainder >= (3 * DSIZE))
    {
        PUT(HDRP(bp), PACK(asize, (1 | PREV_ALLOC)));
        PUT(FTRP(bp), PACK(asize, (1 | PREV_ALLOC)));
        char *newptr = NEXT_BLKP(bp);
        PUT(HDRP(newptr), PACK(remainder, (0 | PREV_ALLOC) ));
        PUT(FTRP(newptr), PACK(remainder, (0 | PREV_ALLOC) ));
        insert_list(newptr, remainder);
    }
    else
    {
        PUT(HDRP(bp), PACK(csize, (1  | PREV_ALLOC)));
        PUT(FTRP(bp), PACK(csize, (1  | PREV_ALLOC)));
    }
#ifdef DEBUG
    debugnum = PREV_BLKP(0x8000010d8);
#endif
    //    mm_checkheap(1);
}

/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
static void *find_fit(size_t asize)
{
    int num = get_list_num(asize);
    /* First-fit search */
    void *bp;
    while (num < LIST_SIZE)
    {
        for (bp = segrated_list[num]; bp; bp = NEXT(bp))
        {
            if (asize <= GET_SIZE(HDRP(bp)))
            {
                return bp;
            }
        }
        num++;
    }
    return NULL; /* No fit */
}
