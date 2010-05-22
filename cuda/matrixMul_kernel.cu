/*
 * Copyright 1993-2007 NVIDIA Corporation.  All rights reserved.
 *
 * NOTICE TO USER:
 *
 * This source code is subject to NVIDIA ownership rights under U.S. and
 * international Copyright laws.  Users and possessors of this source code
 * are hereby granted a nonexclusive, royalty-free license to use this code
 * in individual and commercial software.
 *
 * NVIDIA MAKES NO REPRESENTATION ABOUT THE SUITABILITY OF THIS SOURCE
 * CODE FOR ANY PURPOSE.  IT IS PROVIDED "AS IS" WITHOUT EXPRESS OR
 * IMPLIED WARRANTY OF ANY KIND.  NVIDIA DISCLAIMS ALL WARRANTIES WITH
 * REGARD TO THIS SOURCE CODE, INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY, NONINFRINGEMENT, AND FITNESS FOR A PARTICULAR PURPOSE.
 * IN NO EVENT SHALL NVIDIA BE LIABLE FOR ANY SPECIAL, INDIRECT, INCIDENTAL,
 * OR CONSEQUENTIAL DAMAGES, OR ANY DAMAGES WHATSOEVER RESULTING FROM LOSS
 * OF USE, DATA OR PROFITS,  WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE
 * OR OTHER TORTIOUS ACTION,  ARISING OUT OF OR IN CONNECTION WITH THE USE
 * OR PERFORMANCE OF THIS SOURCE CODE.
 *
 * U.S. Government End Users.   This source code is a "commercial item" as
 * that term is defined at  48 C.F.R. 2.101 (OCT 1995), consisting  of
 * "commercial computer  software"  and "commercial computer software
 * documentation" as such terms are  used in 48 C.F.R. 12.212 (SEPT 1995)
 * and is provided to the U.S. Government only as a commercial end item.
 * Consistent with 48 C.F.R.12.212 and 48 C.F.R. 227.7202-1 through
 * 227.7202-4 (JUNE 1995), all U.S. Government End Users acquire the
 * source code with only those rights set forth herein.
 *
 * Any use of this source code in individual and commercial software must
 * include, in the user documentation and internal comments to the code,
 * the above Disclaimer and U.S. Government End Users Notice.
 */

/* Matrix multiplication: C = A * B.
 * Device code.
 */

#ifndef _MATRIXMUL_KERNEL_H_
#define _MATRIXMUL_KERNEL_H_

#include <stdio.h>
#include "matrixMul.h"

#define CHECK_BANK_CONFLICTS 0
#if CHECK_BANK_CONFLICTS
#define AS(i, j) cutilBankChecker(((float*)&As[0][0]), (BLOCK_SIZE * i + j))
#define BS(i, j) cutilBankChecker(((float*)&Bs[0][0]), (BLOCK_SIZE * i + j))
#else
#define AS(i, j) As[i][j]
#define BS(i, j) Bs[i][j]
#endif

__constant__ float constData[8192];

// declare texture reference for 1D float texture
texture<float, 1, cudaReadModeElementType> tex_1D;

// declare texture reference for 2D float texture
texture<float, 2, cudaReadModeElementType> tex_2D;

// declare texture reference for 3D float texture
texture<float, 3, cudaReadModeElementType> tex_3D;

////////////////////////////////////////////////////////////////////////////////
//! Matrix multiplication on the device: C = A * B
//! wA is A's width and wB is B's width
////////////////////////////////////////////////////////////////////////////////
extern "C"
__global__ void
matrixMul( float* C, float* A, float* B, int wA, int wB)
{
    // Block index
    int bx = blockIdx.x;
    int by = blockIdx.y;

    // Thread index
    int tx = threadIdx.x;
    int ty = threadIdx.y;

    // Index of the first sub-matrix of A processed by the block
    int aBegin = wA * BLOCK_SIZE * by;

    // Index of the last sub-matrix of A processed by the block
    int aEnd   = aBegin + wA - 1;

    // Step size used to iterate through the sub-matrices of A
    int aStep  = BLOCK_SIZE;

    // Index of the first sub-matrix of B processed by the block
    int bBegin = BLOCK_SIZE * bx;

    // Step size used to iterate through the sub-matrices of B
    int bStep  = BLOCK_SIZE * wB;

    // Csub is used to store the element of the block sub-matrix
    // that is computed by the thread
    float Csub = 0;

    // Loop over all the sub-matrices of A and B
    // required to compute the block sub-matrix
    for (int a = aBegin, b = bBegin;
             a <= aEnd;
             a += aStep, b += bStep) {

        // Declaration of the shared memory array As used to
        // store the sub-matrix of A
        __shared__ float As[BLOCK_SIZE][BLOCK_SIZE];

        // Declaration of the shared memory array Bs used to
        // store the sub-matrix of B
        __shared__ float Bs[BLOCK_SIZE][BLOCK_SIZE];

        // Load the matrices from device memory
        // to shared memory; each thread loads
        // one element of each matrix
        AS(ty, tx) = A[a + wA * ty + tx];
        BS(ty, tx) = B[b + wB * ty + tx];

        // Synchronize to make sure the matrices are loaded
        __syncthreads();

        // Multiply the two matrices together;
        // each thread computes one element
        // of the block sub-matrix
        for (int k = 0; k < BLOCK_SIZE; ++k)
            Csub += AS(ty, k) * BS(k, tx);

        // Synchronize to make sure that the preceding
        // computation is done before loading two new
        // sub-matrices of A and B in the next iteration
        __syncthreads();
    }

    // Write the block sub-matrix to device memory;
    // each thread writes one element
    int c = wB * BLOCK_SIZE * by + BLOCK_SIZE * bx;
    C[c + wB * ty + tx] = Csub;
}

////////////////////////////////////////////////////////////////////////////////
//! Fetch from texture lookup
//! @param g_odata output data in global memory
////////////////////////////////////////////////////////////////////////////////
extern "C"
__global__ void
fetchTexOneD( float* g_odata, int width) 
{
    // calculate normalized texture coordinates
    unsigned int x = threadIdx.x;

    // read from texture and write to global memory
    g_odata[x] = tex1Dfetch(tex_1D, x);
}

////////////////////////////////////////////////////////////////////////////////
//! Get from texture lookup
//! @param g_odata output data in global memory
////////////////////////////////////////////////////////////////////////////////
extern "C"
__global__ void
getTexOneD( float* g_odata, int width) 
{
    // calculate normalized texture coordinates
    unsigned int x = threadIdx.x;

    float u = ((float)x + 0.5f)/ (float) width;

    // read from texture and write to global memory
    g_odata[x] = tex1D(tex_1D, u);
}

////////////////////////////////////////////////////////////////////////////////
//! Get from texture lookup
//! @param g_odata output data in global memory
////////////////////////////////////////////////////////////////////////////////
extern "C"
__global__ void
getTexTwoD( float* g_odata, int width, int height) 
{
    // calculate normalized texture coordinates
    unsigned int x = threadIdx.x;
    unsigned int y = threadIdx.y;

    float u = ((float)x + 0.25f)/ (float) width;
    float v = ((float)y + 0.25f)/ (float) height;

    // read from texture and write to global memory
    g_odata[y*width + x] = tex2D(tex_2D, u, v);
}

////////////////////////////////////////////////////////////////////////////////
//! Get from texture lookup
//! @param g_odata output data in global memory
////////////////////////////////////////////////////////////////////////////////
extern "C"
__global__ void
getTexThreeD( float* g_odata, int width, int height, int depth) 
{
    // calculate normalized texture coordinates
    unsigned int x = threadIdx.x;
    unsigned int y = threadIdx.y;
    unsigned int z = threadIdx.z;

    float u = ((float)x + 0.75f)/ (float) width;
    float v = ((float)y + 0.75f)/ (float) height;
    float w = ((float)z + 0.75f)/ (float) depth;

    // read from texture and write to global memory
    g_odata[(height*z + y)*width + x] = tex3D(tex_3D, u, v, w);
}

#endif // #ifndef _MATRIXMUL_KERNEL_H_
