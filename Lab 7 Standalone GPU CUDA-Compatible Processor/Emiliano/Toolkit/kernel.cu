#include <cuda_bf16.h>
#include <stdint.h>

// Vector Addition: Compute element-wise addition of two int16_t vectors.
__global__ void vector_add(int16_t *a, int16_t *b, int16_t *c) {
    int idx = threadIdx.x;
    c[idx] = a[idx] + b[idx];
}

// Vector Subtraction: Compute element-wise subtraction of two int16_t vectors.
__global__ void vector_sub(int16_t *a, int16_t *b, int16_t *c) {
    int idx = threadIdx.x;
    c[idx] = a[idx] - b[idx];
}

// BFloat16 Vector Multiply: Compute CUDA’s built-in BFloat16 data type vector multiply.
__global__ void bf16_vector_mul(__nv_bfloat16 *a, __nv_bfloat16 *b, __nv_bfloat16 *c) {
    int idx = threadIdx.x;
    c[idx] = __hmul(a[idx], b[idx]);
}

// BFloat16 Fused Multiply-Accumulate: BFloat16 MAC (d = a * b + c).
__global__ void bf16_fma(__nv_bfloat16 *a, __nv_bfloat16 *b, __nv_bfloat16 *c, __nv_bfloat16 *d) {
    int idx = threadIdx.x;
    d[idx] = __hfma(a[idx], b[idx], c[idx]);
}

// ReLU Activation: Compute the Rectified Linear Unit: out[i] = max(0, in[i]).
// Implementation for int16_t.
__global__ void relu_int16(int16_t *in, int16_t *out) {
    int idx = threadIdx.x;
    out[idx] = (in[idx] > 0) ? in[idx] : 0;
}

// ReLU Activation: Implementation for BFloat16.
__global__ void relu_bf16(__nv_bfloat16 *in, __nv_bfloat16 *out) {
    int idx = threadIdx.x;
    out[idx] = (__hgt(in[idx], __float2bfloat16(0.0f))) ? in[idx] : __float2bfloat16(0.0f);
}
