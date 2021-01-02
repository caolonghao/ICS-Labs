#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <limits.h>
#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
#define DEBUGx
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif


/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
 
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)


#define FIRST_FIT

/* $begin mallocmacros */
/* Basic constants and macros */
#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Doubleword size (bytes) */
#define CHUNKSIZE   168 /* Extend heap by this amount (bytes) */   

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) //line:vm:mm:pack

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))   
#define PUT(p, val)  (*(unsigned int *)(p) = (val))

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)
/*Storing Current block allocation and 1st lsb*/
#define GET_ALLOC(p) (GET(p) & 0x1)
/*Storing Previous block allocation and 2nd lsb*/
#define GET_PREV_ALLOC(p) (GET(p) & 0x2)
/*Storing Next block allocation and 3rd lsb*/
#define GET_NEXT_ALLOC(p) (GET(p) & 0x4)
/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

/* Given block ptr bp from heap, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))

/* From free_list */
#define GET_NEXTP(bp)            (*(void **)(bp + DSIZE))
#define GET_PREVP(bp)            (*(void **)bp)
#define SET_NEXTP(bp, ptr)       (GET_NEXTP(bp) = ptr)
#define SET_PREVP(bp, ptr)       (GET_PREVP(bp) = ptr)
#define GET_SEGI(seg_list, i)   (*(void **)(seg_list + (i*DSIZE))) 
#define SET_SEGI(seglist,i, ptr)((GET_SEGI(seg_list,i)) = ptr)

#define MIN_BLOCK_SIZE (3*DSIZE)
#define SEG_LIST_SIZE_DIFF 32 
#define NO_OF_LISTS 15




/* $end mallocmacros */

/* Global variables */
static char *heap_listp = 0;  /* Pointer to first block */  
static char *seg_list=0;    /* Pointer to first block of seg list*/
static int temp;
#ifdef NEXT_FIT
    static char *rover;           /* Next fit rover */
#endif


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))
#define SIZE_PTR(p)  ((size_t*)(((char*)(p)) - SIZE_T_SIZE))



/* Function prototypes for internal helper routines */
static void *extend_heap(size_t words);
static void place(void *bp, size_t asize);
static void checkheap(int verbose);
static void checkblock(void *bp);
static void printblock(void *bp); 
static void print_all();
static void print_free();
static void print_free_block(void *bp) ;
static void *add_free_list_lifo(void *bp);
static void delete_free_list(void *bp);
static void *coalesce_block(void *bp) ;
static unsigned int get_list_no(size_t asize);
static void *find_fit_segregated(size_t asize);
static int in_heap(const void *p);
static void check_cycle();
static void check_seg_pointers();
static void check_count_free_list();


/**
 * mm_init - Initialize
 * @return  -1 on error, 0 on success.
 */
int mm_init(void) {
    /*Initialize global variables*/
    heap_listp = NULL;
    seg_list = NULL;
    
    /* Create the initial empty heap */
    if ((seg_list = mem_sbrk(NO_OF_LISTS*DSIZE)) == (void *)-1) 
        return -1;

    /*Initialize data in seg_list to NULL*/
    for (int i = 0; i < NO_OF_LISTS ; ++i)
    {
        SET_SEGI(seg_list,i,NULL);
    }

    if ((heap_listp = mem_sbrk(4*WSIZE)) == (void *)-1) 
        return -1;
    PUT(heap_listp, 0);                          /* Alignment padding */
    PUT(heap_listp + (1*WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (2*WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (3*WSIZE), PACK(0, 1));     /* Epilogue header */
    heap_listp += (2*WSIZE);                     

    #ifdef NEXT_FIT
        rover = heap_listp;
    #endif

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) {
        dbg_printf("Error Mm_init\n");
        return -1;
    }
    return 0;
}


/**
 * malloc - Main function to allocate block of size bytes in heap
 * @param size size of heap to be allocated
 */
void *malloc (size_t size) {
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      
    if (heap_listp == 0){
        mm_init();
    }
    /* Ignore spurious requests */
    if (size == 0)
       return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if ( size <= DSIZE ) { 
        asize = 3*DSIZE;
    } else {
        /*add overhead and align */
        asize = ALIGN( DSIZE + size )  ;   
    }
    /* Search the free list for a fit */
    if (( bp = find_fit_segregated( asize )) != NULL ) { 
        place(bp, asize);                 
        return bp;
    }
    /*Still here, we need to extend the heap*/
    extendsize = MAX( asize, CHUNKSIZE );                 
    if (( bp = extend_heap( extendsize/WSIZE )) == NULL )  
        return NULL;                         
    place( bp, asize );                       
    return bp;
}


/**
 * mm_free - Free a block 
 * @param bp Block to be freed
 */
void mm_free(void *bp)
{
    if(bp == 0) 
       return;
    size_t size = GET_SIZE(HDRP(bp));
    if (heap_listp == 0){
       mm_init();
    }
    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0)); 
    bp = add_free_list_lifo(bp);
}


/**
 * coalesce - Coalesce the blocks to avoid fragmentation.
 *            Need to be done after every block free.
 * @param bp Block pointer to block to be coalesced
 */
static inline void *coalesce_block(void *bp) 
{   
    size_t prev_alloc = GET_ALLOC(FTRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));
    /*The line kept, so that compiler dont complain.*/
    if(size == 0) {
        checkheap(9);
    }

    if ( prev_alloc && next_alloc ) {               /* Case 1 */
        return bp;               
    } else if ( prev_alloc && !next_alloc ) {       /* Case 2 */
        size += GET_SIZE( HDRP( NEXT_BLKP( bp )));
        /* Next is not allocated-- remove from free list */
        delete_free_list( NEXT_BLKP( bp ));
        PUT( HDRP( bp ), PACK( size, 0 ));
        PUT( FTRP( bp ), PACK( size, 0 ));
    } else if ( !prev_alloc && next_alloc ) {       /* Case 3 */
        bp = PREV_BLKP(bp);
        size += GET_SIZE(HDRP(bp));
        /* Previous is not allocated-- remove from free list */
        delete_free_list(bp);
        PUT(HDRP(bp), PACK(size,0));
        PUT(FTRP(bp), PACK(size,0));
    } else {                                        /* Case 4 */
        /* Both Previous and Next Block are not allocated */
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        /* Remove both previous and next */
        delete_free_list(PREV_BLKP(bp));
        delete_free_list(NEXT_BLKP(bp));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
    }
    return bp;
}


/**
 * extend_heap - Extend heap with free block and return its block pointer
 * @param words size of the heap to extend in words
 */
static inline void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT( HDRP( bp ), PACK( size, 0 ));         /* Free block header */
    PUT( FTRP( bp ), PACK( size, 0 ));         /* Free block footer */
    PUT( HDRP( NEXT_BLKP( bp )), PACK(0, 1)); /* New epilogue header */
    bp = add_free_list_lifo(bp);
    return bp;
}


/**
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 * @param bp    Block where new block is to be put
 * @param asize aligned size of new block
 */
static inline void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));  
    int prev_alloc=0,next_alloc=0; 
    delete_free_list(bp);
    prev_alloc = GET_PREV_ALLOC(PREV_BLKP(bp));
    next_alloc = GET_NEXT_ALLOC(NEXT_BLKP(bp));
    if ((csize - asize) >= MIN_BLOCK_SIZE) { 
        /* Splice the etc free space */
        /* Minimum size to be left for free list is 3*DSIZE=24 */
        /* Put allocation in header, for next, previous, current
         * Bit wise or of the values, is put 
         */
        PUT(HDRP(bp), PACK(asize, (next_alloc| prev_alloc| 1)));
        PUT(FTRP(bp), PACK(asize, (next_alloc| prev_alloc| 1)));
        /* Splice the Next Block */
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        /*Add the newly spliced block to free list*/
        bp = add_free_list_lifo(bp);
    } else {
        /* Do the allocation directly */
        PUT(HDRP(bp), PACK(csize, (next_alloc| prev_alloc| 1)));
        PUT(FTRP(bp), PACK(csize, (next_alloc| prev_alloc| 1)));
    }
}


/**
 * find_fit_segregated - Find the free block for the current requested size
 *                       in all the segregated lists
 * @param asize size of the free block to be searched 
 */
static inline void *find_fit_segregated (size_t asize)
{
    void *bp = 0; 
    unsigned int list_no = get_list_no(asize);          
    
    /* list_no is the minimum list it should start to search for*/
    for (int i = list_no; i < NO_OF_LISTS; i++) {
        for (bp = GET_SEGI(seg_list,i); (bp!=NULL) && GET_SIZE(HDRP(bp)) > 0;
         bp = GET_NEXTP(bp)) {
            if ( bp!=NULL && (asize <= GET_SIZE(HDRP(bp)))) {
                return bp;
            }
        }    
    }
    return NULL; /* No fit */
}


/**
 * checkblock - check the current block for consistency
 * @param bp Block to be checked
 */
static void checkblock(void *bp) 
{
    /**
     * Checks-
     * 1) Check for alignment
     * 2) Check for Header and Footer Match
     * 3) Check for the block to be in heap
     * 4) Check coalescing- no previous/next free blocks if current is free.
     */
    
    /*Check Block for alignment*/
    if ((size_t)bp % 8) {
       printf("ERROR: %p is not doubleword aligned\n", bp);
    }

    /*Check Block Header matching Footer*/
    if (GET(HDRP(bp)) != GET(FTRP(bp))) {
        printf("ERROR: header does not match footer\n");
        dbg_printf("**Debug Info \n");
        dbg_printf("Heap_listp = %p \n", heap_listp );
        dbg_printf("Block %p \n", bp );
    } 

    /* Check for if the block is in the heap */       
    if( !in_heap(bp)) {
        printf("ERROR: %p is not in heap \n", bp);        
    }

    /**
     * Concept : As all the blocks are iteratively checked, just checking
     *           next block for coalescing will suffice next/previous block
     *           checks.
     */    
    /* Check Coalescing with Next Block */
    if( GET_ALLOC(HDRP(bp)) ==0 && NEXT_BLKP(bp)!=NULL 
        && GET_ALLOC(HDRP(NEXT_BLKP(bp))) ==0 ) {
        printf("ERROR: %p is not coalesced with next block\n", bp);        
        print_all();
        exit(1);
    }

}


/**
 * checkheap - Function to check the consistency of the heap
 * @param verbose How much information to be printed on the screen
 */
void checkheap(int verbose) 
{
    /* Checks:
     * 1. Check each block for
     *     a. Alignment
     *     b. Header and Footer :
     *         i. Size Match
     *         ii. Header Footer Match Each other
     *     c. In Heap
     * 2. Get next block in free list.
     * 3. Check for no extra block in heap, from the seg lists
     * 4. Check for the cycle in the list.
     * 5. Check Epilogue Block
     * 6. Check Prologue Block
     * 7. Check proper coalescing - no previous and next free blocks
     */
    
    char *bp = heap_listp;
    

    /**
     * run checkheap with verbose =9 to avoid compiler from giving error, 
     * and also making sure that checkheap doesnot run
     */
    if(verbose == 9) {
        return;
    }
    /**
     * Following condition never will be true. 
     * A place function to avoid compiler compalaining
     */
    if(verbose ==10) {
        print_free_block(GET_SEGI(seg_list,0));

    }
    if (verbose){
        dbg_printf("Heap (%p):\n", heap_listp);        
    }

    /*Check for epilogue*/
    if ((GET_SIZE(HDRP(heap_listp)) != DSIZE) || !GET_ALLOC(HDRP(heap_listp))){
        printf("ERROR: Bad prologue header\n");
    }
    
    /*Check header block for issues*/
    checkblock(heap_listp);
    /*Now check the complete heap*/
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
        if (verbose) {
            printblock(bp);/*If Verbose , Print the heap*/
        }
        checkblock(bp);
    }

    if (verbose)
        printblock(bp);
    /*Check for Epilogue*/
    if ((GET_SIZE(HDRP(bp)) != 0) || !(GET_ALLOC(HDRP(bp)))) {
        printf("ERROR: Bad epilogue header for block \n");
        printblock(bp);
    }

    /**
     * Checks with respect to seg list
     */
    
    /*Check if all the pointers in all the free lists are aligned*/
    check_seg_pointers();


    /* Check for count of free blocks, iterating over blocks and by 
     * going through next pointers*/
    check_count_free_list();

    /*Check for cycle in the free list*/
    check_cycle();
}


/**
 * check_seg_pointers - Check the seg lists for correctness of all the previous
 *                      and next pointers
 */
static void check_seg_pointers()
{
    void *bp;
    void *next;
    /* Check for all the pointers in the blocks to be correct */
    for (int i = 0; i < NO_OF_LISTS; i++) {
        for (bp = GET_SEGI(seg_list,i); (bp!=NULL) 
          &&  (GET_SIZE(HDRP(bp)) > 0);bp = GET_NEXTP(bp)) {
            next = GET_NEXTP(bp);
            if( next != NULL && GET_PREVP(next) != bp) {
                printf("ERROR: Link at block %p is broken\n",bp );
            }
        }   
    }
}


/**
 * check_cycle - Check for cycle in the free lists.
 */
static void check_cycle() 
{
    void *hare;
    void *tortoise;
    /*Implementing Tortoise and hare algo, Iterating over each seg list*/
    for (int i = 0; i < NO_OF_LISTS; ++i) {
        hare= GET_SEGI(seg_list,i);
        tortoise = GET_SEGI(seg_list,i);

        while( tortoise != NULL && hare != NULL  ) {
            if( hare !=  NULL ) {
                hare = GET_NEXTP(hare);
            }
            if( hare != NULL ) {
                tortoise = GET_NEXTP(hare);
            }
            if( hare == tortoise ){
                /*Its a cycle .. error . */
                printf("ERROR: There is a cycle in the free_list\n");       
            }
        }
    }
}


/**
 * check_count_free_list -Check for count of free blocks, iterating over blocks 
 *                        and by going through next pointers
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


/**
 * print_all - Prints every block in the heap structure
 */
void print_all()
{
    void *bp;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp)) {
           printblock(bp);
    }
}


/**
 * print_free - Prints all segregated free lists
 */
void print_free()
{
    void *bp;
    for(int i=0; i<NO_OF_LISTS;i++) {
        dbg_printf("List No: %d",i);
        bp = GET_SEGI(seg_list,i);
        while(bp != NULL && GET_SIZE(HDRP(bp)) > 0) {       
            printblock(bp);
            bp = GET_NEXTP(bp);
        }
    }
}


/**
 * printblock - Print the contents of the give block 
 * @param bp Block to be printed
 */
static void printblock(void *bp) 
{   
    size_t hsize=-1, halloc, fsize, falloc;

    if ( bp != NULL) {
        hsize = GET_SIZE(HDRP(bp));
        halloc = GET_ALLOC(HDRP(bp));  
        fsize = GET_SIZE(FTRP(bp));
        falloc = GET_ALLOC(FTRP(bp));  
        dbg_printf("%p: header: [%lu:%c] footer: [%lu:%c]\n", bp,\
            hsize, (halloc ? 'a' : 'f'), \
            fsize, (falloc ? 'a' : 'f')); 
    } else {
        dbg_printf("bp is NULL\n");
    }

    if (hsize == 0) {
        dbg_printf("%p: EOL\n", bp);
        return;
    }
}


/**
 * print_free_block - Print the contents of the given free block, including 
 *                    the pointers
 * @param bp Block to be printed
 */
static void print_free_block(void *bp) 
{
    size_t hsize = -1, halloc, fsize, falloc;

    if(bp != NULL) {
    hsize = GET_SIZE(HDRP(bp));
    halloc = GET_ALLOC(HDRP(bp));  
    fsize = GET_SIZE(FTRP(bp));
    falloc = GET_ALLOC(FTRP(bp));  
    dbg_printf("%p: header: [%lu:%c] footer: [%lu:%c]\n", bp,hsize, \
        (halloc ? 'a' : 'f'), fsize, (falloc ? 'a' : 'f')); 
    dbg_printf( "%p: next: [%p] prev: [%p]\n  ", bp, GET_NEXTP(bp), \
        GET_PREVP(bp) );
    } else {
        dbg_printf("bp is null\n");
    }

    if (hsize == 0) {
        dbg_printf("%p: EOL\n", bp);
        return;
    }
}


/**
 * add_free_list_lifo - add the specific block ptr to the free list, making it
 *                      the first element in the list(LIFO).
 * @param bp Pointer to the block being added to the list
 */
static void *add_free_list_lifo(void *bp)
{
    int list_no ;
 
    /*Coalesce the block*/
    bp = coalesce_block(bp);

    list_no = get_list_no(GET_SIZE(HDRP(bp)));        
    if ( GET_SEGI(seg_list,list_no) == NULL) { 
        SET_PREVP(bp, NULL);
        SET_NEXTP(bp, NULL);
    } else if ( GET_SEGI(seg_list,list_no) != NULL) {
        SET_NEXTP(bp,GET_SEGI(seg_list,list_no));
        SET_PREVP(bp,NULL);
        SET_PREVP(GET_SEGI(seg_list,list_no),bp);
    }

    /*Point next of bp to where root node was pointing*/
    /*Make root to point to new node*/
    SET_SEGI(seg_list, list_no, bp);
    return bp;
}


/**
 * delete_free_list - Delete a block from the free seg list
 * @param bp block to be deleted from free list
 */
static  inline void delete_free_list(void *bp)
{
    int list_no = get_list_no(GET_SIZE(HDRP(bp)));
    temp++;
    void *next = GET_NEXTP(bp);
    void *prev = GET_PREVP(bp);
    /*Handle corner case of deleting head node.*/
    if(bp == GET_SEGI(seg_list, list_no) ) {
        SET_SEGI(seg_list, list_no, next);
    }

    if(prev != NULL) {
        SET_NEXTP(prev, next);
    }

    if(next != NULL) {
        SET_PREVP(next, prev);
    }

    /*Clean Up task. Set next/prev pointers of bp to NULL*/
    SET_NEXTP(bp,NULL);
    SET_PREVP(bp,NULL);
}


/**
 * in_heap - check if the block is in the heap memory
 * @param  p pointer to the blocked to be checked
 * @return   integer flag, 1- in heap, 0- out of heap
 */
static inline int in_heap(const void *p) {
    return p <= mem_heap_hi() && p >= mem_heap_lo();
}


/**
 * mm_checkheap - Function, to call checkheap as per verbose value
 * @param verbose value determines what things to print in checkheap
 */
void mm_checkheap(int verbose) {
        /*Get gcc to be quiet. */
     verbose = verbose;
     checkheap(verbose);
}


/**
 * calloc - Allocates a block of memory for an array of num elements,
 *          each of them size bytes long, and initializes all its bits to zero.
 * @param nmemb Number of Memory Elements(Array of memory)
 * @param size  Size of each Memory Element(Array of memory)
 */
void *calloc (size_t nmemb, size_t size) 
{
    size_t bytes = nmemb * size;
    void *newptr;

    newptr = malloc(bytes);
    memset(newptr, 0, bytes);

    return newptr;
}


/**
 * mm_realloc - The function reallocates the memory, with new size
 *              by allcating a new block, and then deleting the previous 
 *              block .
 * @param ptr  Block to be re-allocated
 * @param size New Size of the allocated memory
 */
void *mm_realloc ( void *ptr, size_t size )
{
    size_t oldsize;
    void *newptr;
    /* If size == 0 then this is just free, and we return NULL. */
    if(size == 0) {
        mm_free(ptr);
        return 0;
    }
    /* If oldptr is NULL, then this is just malloc. */
    if(ptr == NULL) {
        return mm_malloc(size);
    }
    newptr = mm_malloc(size);
    /* If realloc() fails the original block is left untouched  */
    if(!newptr) {
        return 0;
    }
    /* Copy the old data. */
    oldsize = GET_SIZE(HDRP(ptr));
    if(size < oldsize)
         oldsize = size;
    memcpy(newptr, ptr, oldsize);
    /* Free the old block. */
    mm_free(ptr);
    return newptr;
}
/**
 * get_list_no - The function searches for correct segregated list numner
 *               for the current block of size asize.
 * @param  asize The size of current block
 * @return       Segregated list Number
 */
static inline unsigned int get_list_no(size_t asize)
{
 if ( asize <= 24 )
        return 0;
    else if ( asize <= 48 )
        return 1;
    else if ( asize <= 72 )
        return 2;
    else if ( asize <= 96 )
        return 3;
    else if ( asize <= 120 )
        return 4;
    else if ( asize <= 240 )
        return 5;
    else if ( asize <=  480 ) 
        return 6;    
    else if ( asize <= 960 ) 
        return 7;
    else if ( asize <= 1920 ) 
        return 8;
    else if ( asize <= 3840 ) 
        return 9;
    else if ( asize <= 7680 ) 
        return 10;
    else if ( asize <= 15360 ) 
        return 11;
    else if ( asize <= 30720 ) 
        return 12;
    else if ( asize <= 61440 ) 
        return 13;
    else
        return 14;
}