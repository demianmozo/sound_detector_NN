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
#define N_LAYER_3 64
#define N_LAYER_3 64
#define N_LAYER_6 32
#define N_LAYER_6 32
#define N_LAYER_9 4
#define N_LAYER_9 4

// hls-fpga-machine-learning insert layer-precision
typedef nnet::array<ap_fixed<16,6>, 1*1> input_t;
typedef ap_fixed<16,6> model_default_t;
typedef nnet::array<ap_fixed<16,6>, 64*1> layer3_t;
typedef ap_fixed<8,5> weight3_t;
typedef ap_fixed<8,5> bias3_t;
typedef ap_uint<1> layer3_index;
typedef nnet::array<ap_fixed<8,3>, 64*1> layer5_t;
typedef ap_fixed<18,8> q_activation_6_table_t;
typedef nnet::array<ap_fixed<16,6>, 32*1> layer6_t;
typedef ap_fixed<8,5> weight6_t;
typedef ap_fixed<8,5> bias6_t;
typedef ap_uint<1> layer6_index;
typedef nnet::array<ap_fixed<8,3>, 32*1> layer8_t;
typedef ap_fixed<18,8> q_activation_7_table_t;
typedef nnet::array<ap_fixed<16,6>, 4*1> layer9_t;
typedef ap_fixed<8,5> weight9_t;
typedef ap_fixed<8,5> bias9_t;
typedef ap_uint<1> layer9_index;
typedef nnet::array<ap_fixed<16,6>, 4*1> result_t;
typedef ap_fixed<18,8> activation_3_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> activation_3_exp_table_t;
typedef ap_fixed<18,8,AP_RND,AP_SAT> activation_3_inv_table_t;

#endif
