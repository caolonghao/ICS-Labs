/*
 * trans.c - Matrix transpose B = A^T
 *
 * Each transpose function must have a prototype of the form:
 * void trans(int M, int N, int A[N][M], int B[M][N]);
 *
 * A transpose function is evaluated by counting the number of misses
 * on a 1KB direct mapped cache with a block size of 32 bytes.
 */
#include <stdio.h>
#include "cachelab.h"
#include "contracts.h"

int is_transpose(int M, int N, int A[N][M], int B[M][N]);

/*
 * transpose_submit - This is the solution transpose function that you
 *     will be graded on for Part B of the assignment. Do not change
 *     the description string "Transpose submission", as the driver
 *     searches for that string to identify the transpose function to
 *     be graded. The REQUIRES and ENSURES from 15-122 are included
 *     for your convenience. They can be removed if you like.
 */
char trans_with_eight[] = "Trans with eight blocking";
void transpose_with_eight(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);

        for (int i = 0; i < N; i+=8) {
            for (int j = 0; j < M; j+=8) {
                for(int k=i;k<i+8;k++)
                {
                    int tmp0=A[k][j];
                    int tmp1=A[k][j+1];
                    int tmp2=A[k][j+2];
                    int tmp3=A[k][j+3];
                    int tmp4=A[k][j+4];
                    int tmp5=A[k][j+5];
                    int tmp6=A[k][j+6];
                    int tmp7=A[k][j+7];
                    B[j][k]=tmp0;
                    B[j+1][k]=tmp1;
                    B[j+2][k]=tmp2;
                    B[j+3][k]=tmp3;
                    B[j+4][k]=tmp4;
                    B[j+5][k]=tmp5;
                    B[j+6][k]=tmp6;
                    B[j+7][k]=tmp7;
                }
            }
        }
    
    ENSURES(is_transpose(M, N, A, B));
}

char trans_four[] = " Trans with Blocking size 4";
void transpose_with_four(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    for (int i = 0; i < N; i+=4) {
            for (int j = 0; j < M; j+=4) {
                for(int k=i;k<i+4;k++)
                {
                    int tmp0=A[k][j];
                    int tmp1=A[k][j+1];
                    int tmp2=A[k][j+2];
                    int tmp3=A[k][j+3];
                    B[j][k]=tmp0;
                    B[j+1][k]=tmp1;
                    B[j+2][k]=tmp2;
                    B[j+3][k]=tmp3;
                }
            }
        }
   
   
   
    ENSURES(is_transpose(M, N, A, B));
}

char trans_five[] = " Trans with Blocking size 5";
void transpose_with_five(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    for (int i = 0; i < 60; i+=5) {
            for (int j = 0; j < M; j+=5) {
                        for(int k=i;k<i+5;k++)
                        {
                                int tmp0=A[k][j];
                                int tmp1=A[k][j+1];
                                int tmp2=A[k][j+2];
                                int tmp3=A[k][j+3];
                                int tmp4=A[k][j+4];
                                B[j][k]=tmp0;
                                B[j+1][k]=tmp1;
                                B[j+2][k]=tmp2;
                                B[j+3][k]=tmp3;
                                B[j+4][k]=tmp4;
                        }
                }
            }
    for(int i = 60;i < N; i += 4)
    {
        for(int j=0; j<M ; j += 4)
        {
            for(int k=i; k < i+4 ; k++ )
            {
                int tmp0=A[k][j];
                int tmp1=A[k][j+1];
                int tmp2=A[k][j+2];
                int tmp3=A[k][j+3];
                B[j][k]=tmp0;
                B[j+1][k]=tmp1;
                B[j+2][k]=tmp2;
                B[j+3][k]=tmp3;
            }
        }
    }
    ENSURES(is_transpose(M, N, A, B));
}


/*
 * You can define additional transpose functions below. We've defined
 * a simple one below to help you get started.
 */

 /*
  * trans - A simple baseline transpose function, not optimized for the cache.
  */
char trans_desc[] = "Simple row-wise scan transpose";
void trans(int M, int N, int A[N][M], int B[M][N])
{
    int i, j, tmp;

    REQUIRES(M > 0);
    REQUIRES(N > 0);

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; j++) {
            tmp = A[i][j];
            B[j][i] = tmp;
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

char trans_eight_and_four_VERSION1[]=" Trans with Blocking size 4 and 8 VERSION1 ";
void transpose_with_eight_and_four_version1(int M, int N, int A[N][M], int B[M][N])
{
    for (int i = 0; i < N; i += 8)
    {
        for (int j = 0; j < M; j += 8)
        {
            for (int k = i; k < i + 4; ++k)
            {
                int tmp0 = A[k][j];
                int tmp1 = A[k][j+1];
                int tmp2 = A[k][j+2];
                int tmp3 = A[k][j+3];
                int tmp4 = A[k][j+4];
                int tmp5 = A[k][j+5];
                int tmp6 = A[k][j+6];
                int tmp7 = A[k][j+7];
            
                B[j][k] = tmp0;
                B[j+1][k] = tmp1;
                B[j+2][k] = tmp2;
                B[j+3][k] = tmp3;
                B[j][k+4] = tmp4;
                B[j+1][k+4] = tmp5;
                B[j+2][k+4] = tmp6;
                B[j+3][k+4] = tmp7;

            }
            for(int k = i+4; k < i+8 ; k++)
            {
                int tmp0 = A[k][j];
                int tmp1 = A[k][j+1];
                int tmp2 = A[k][j+2];
                int tmp3 = A[k][j+3];
                int tmp4 = A[k][j+4];
                int tmp5 = A[k][j+5];
                int tmp6 = A[k][j+6];
                int tmp7 = A[k][j+7];

                B[j+4][k-4] = tmp0;
                B[j+5][k-4] = tmp1;
                B[j+6][k-4] = tmp2;
                B[j+7][k-4] = tmp3;
                B[j+4][k] = tmp4;
                B[j+5][k] = tmp5;
                B[j+6][k] = tmp6;
                B[j+7][k] = tmp7;
                
            }
        }
    }
    for(int i=0;i<N;i+=8)
        for(int j=0;j<M;j+=8)
        {
            for(int k=i;k<i+4;k++)
            {
                int tmp0=B[k][j+4];
                int tmp1=B[k][j+5];
                int tmp2=B[k][j+6];
                int tmp3=B[k][j+7];
                int tmp4=B[k+4][j];
                int tmp5=B[k+4][j+1];
                int tmp6=B[k+4][j+2];
                int tmp7=B[k+4][j+3];

                B[k][j+4]=tmp4;
                B[k][j+5]=tmp5;
                B[k][j+6]=tmp6;
                B[k][j+7]=tmp7;
                B[k+4][j]=tmp0;
                B[k+4][j+1]=tmp1;
                B[k+4][j+2]=tmp2;
                B[k+4][j+3]=tmp3;
            }
        }
}

char trans_eight_and_four_VERSION2[] = " Trans with Blocking size 4 and 8 VERSION2 ";
void transpose_with_eight_and_four_version2(int M, int N, int A[N][M], int B[M][N])
{
    REQUIRES(M > 0);
    REQUIRES(N > 0);
    
    for (int i = 0; i < N; i += 8)
    {
        for (int j = 0; j < M; j += 8)
        {
            for (int k = i; k < i + 4; ++k)
            {
                int tmp0 = A[k][j];
                int tmp1 = A[k][j+1];
                int tmp2 = A[k][j+2];
                int tmp3 = A[k][j+3];
                int tmp4 = A[k][j+4];
                int tmp5 = A[k][j+5];
                int tmp6 = A[k][j+6];
                int tmp7 = A[k][j+7];
            
                B[j][k] = tmp0;
                B[j+1][k] = tmp1;
                B[j+2][k] = tmp2;
                B[j+3][k] = tmp3;

                /* reverse place the numbers in blocks */
                B[j+3][k+4] = tmp4;
                B[j+2][k+4] = tmp5;
                B[j+1][k+4] = tmp6;
                B[j][k+4] = tmp7;
            }
            for (int k = 0; k < 4; ++k)
            {
            /* read by rolls  */
                int tmp0 = A[i+4][j+3-k];
                int tmp1 = A[i+5][j+3-k];
                int tmp2 = A[i+6][j+3-k];
                int tmp3 = A[i+7][j+3-k];
                int tmp4 = A[i+4][j+4+k];
                int tmp5 = A[i+5][j+4+k];
                int tmp6 = A[i+6][j+4+k];
                int tmp7 = A[i+7][j+4+k];

                int trans0=B[j+3-k][i+4];
                int trans1=B[j+3-k][i+5];
                int trans2=B[j+3-k][i+6];
                int trans3=B[j+3-k][i+7];

            /* trans by line */
                B[j+4+k][i] = trans0;
                B[j+4+k][i+1] = trans1;
                B[j+4+k][i+2] = trans2;
                B[j+4+k][i+3] = trans3;

            /*  place block3 ans block4 int the right place */
                B[j+3-k][i+4] = tmp0;
                B[j+3-k][i+5] = tmp1;
                B[j+3-k][i+6] = tmp2;
                B[j+3-k][i+7] = tmp3;
                B[j+4+k][i+4] = tmp4;
                B[j+4+k][i+5] = tmp5;
                B[j+4+k][i+6] = tmp6;
                B[j+4+k][i+7] = tmp7;
            }
        }
    }

    ENSURES(is_transpose(M, N, A, B));
}

char transpose_submit_desc[]="Transpose submission";
void transpose_submit(int M, int N, int A[N][M], int B[M][N])
{
    if(M==32&&N==32)    transpose_with_eight(M,N,A,B);
    if(M==64&&N==64)    transpose_with_eight_and_four_version2(M,N,A,B);
    if(N==68&&M==60)    transpose_with_four(M,N,A,B);
}


/*
 * registerFunctions - This function registers your transpose
 *     functions with the driver.  At runtime, the driver will
 *     evaluate each of the registered functions and summarize their
 *     performance. This is a handy way to experiment with different
 *     transpose strategies.
 */
void registerFunctions()
{
    /* Register your solution function */
    registerTransFunction(transpose_submit, transpose_submit_desc);

    /* Register any additional transpose functions */
    registerTransFunction(transpose_with_eight_and_four_version1, trans_eight_and_four_VERSION1);
    registerTransFunction(transpose_with_five, trans_five);
    registerTransFunction(transpose_with_four, trans_four);
}

/*
 * is_transpose - This helper function checks if B is the transpose of
 *     A. You can check the correctness of your transpose by calling
 *     it before returning from the transpose function.
 */
int is_transpose(int M, int N, int A[N][M], int B[M][N])
{
    int i, j;

    for (i = 0; i < N; i++) {
        for (j = 0; j < M; ++j) {
            if (A[i][j] != B[j][i]) {
                return 0;
            }
        }
    }
    return 1;
}

