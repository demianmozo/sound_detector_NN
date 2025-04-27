#ifndef DEFINES_H_
#define DEFINES_H_

#include "ap_fixed.h"
#include "ap_int.h"
#include "nnet_utils/nnet_types.h"
#include <cstddef>
#include <cstdio>

// hls-fpga-machine-learning insert numbers
#define N_INPUT_1_1 61
#define N_INPUT_2_1 13
#define N_INPUT_3_1 1
#define N_SIZE_0_2 793
#define N_LAYER_3 8
#define N_LAYER_3 8
#define N_LAYER_6 32
#define N_LAYER_6 32
#define N_LAYER_9 64
#define N_LAYER_9 64
#define N_LAYER_12 32
#define N_LAYER_12 32
#define N_LAYER_15 4
#define N_LAYER_15 4

// hls-fpga-machine-learning insert layer-precision
typedef ap_fixed<16,6> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef ap_fixed<16,6> layer3_t;
typedef ap_fixed<8,5> weight3_t;
typedef ap_fixed<8,5> bias3_t;
typedef ap_uint<1> layer3_index;
typedef ap_fixed<8,5,AP_RND_CONV,AP_SAT> layer5_t;
typedef ap_fixed<18,8> q_activation_18_table_t;
typedef ap_fixed<16,6> layer6_t;
typedef ap_fixed<8,5> weight6_t;
typedef ap_fixed<8,5> bias6_t;
typedef ap_uint<1> layer6_index;
typedef ap_fixed<8,5,AP_RND_CONV,AP_SAT> layer8_t;
typedef ap_fixed<18,8> q_activation_19_table_t;
typedef ap_fixed<16,6> layer9_t;
typedef ap_fixed<8,5> weight9_t;
typedef ap_fixed<8,5> bias9_t;
typedef ap_uint<1> layer9_index;
typedef ap_fixed<8,5,AP_RND_CONV,AP_SAT> layer11_t;
typedef ap_fixed<18,8> q_activation_20_table_t;
typedef ap_fixed<16,6> layer12_t;
typedef ap_fixed<8,5> weight12_t;
typedef ap_fixed<8,5> bias12_t;
typedef ap_uint<1> layer12_index;
typedef ap_fixed<8,5,AP_RND_CONV,AP_SAT> layer14_t;
typedef ap_fixed<18,8> q_activation_21_table_t;
typedef ap_fixed<16,6> layer15_t;
typedef ap_fixed<8,5> weight15_t;
typedef ap_fixed<8,5> bias15_t;
typedef ap_uint<1> layer15_index;
typedef ap_fixed<16,6> result_t;
typedef ap_fixed<18,8> activation_8_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> activation_8_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> activation_8_inv_table_t;

#endif
