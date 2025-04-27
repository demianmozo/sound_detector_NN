#include <iostream>

#include "myproject.h"
#include "parameters.h"

void myproject(
    input_t flatten_24_input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    result_t layer17_out[N_LAYER_15]
) {

    // hls-fpga-machine-learning insert IO
    #pragma HLS ARRAY_RESHAPE variable=flatten_24_input complete dim=0
    #pragma HLS ARRAY_PARTITION variable=layer17_out complete dim=0
    #pragma HLS INTERFACE ap_vld port=flatten_24_input,layer17_out 
//    #pragma HLS PIPELINE

#ifndef __SYNTHESIS__
    static bool loaded_weights = false;
    if (!loaded_weights) {
        // hls-fpga-machine-learning insert load weights
        nnet::load_weights_from_txt<weight3_t, 6344>(w3, "w3.txt");
        nnet::load_weights_from_txt<bias3_t, 8>(b3, "b3.txt");
        nnet::load_weights_from_txt<weight6_t, 256>(w6, "w6.txt");
        nnet::load_weights_from_txt<bias6_t, 32>(b6, "b6.txt");
        nnet::load_weights_from_txt<weight9_t, 2048>(w9, "w9.txt");
        nnet::load_weights_from_txt<bias9_t, 64>(b9, "b9.txt");
        nnet::load_weights_from_txt<weight12_t, 2048>(w12, "w12.txt");
        nnet::load_weights_from_txt<bias12_t, 32>(b12, "b12.txt");
        nnet::load_weights_from_txt<weight15_t, 128>(w15, "w15.txt");
        nnet::load_weights_from_txt<bias15_t, 4>(b15, "b15.txt");
        loaded_weights = true;
    }
#endif

    // ****************************************
    // NETWORK INSTANTIATION
    // ****************************************

    // hls-fpga-machine-learning insert layers

    auto& layer2_out = flatten_24_input;
    layer3_t layer3_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer3_out complete dim=0
    nnet::dense<input_t, layer3_t, config3>(layer2_out, layer3_out, w3, b3); // q_dense_26

    layer5_t layer5_out[N_LAYER_3];
    #pragma HLS ARRAY_PARTITION variable=layer5_out complete dim=0
    nnet::linear<layer3_t, layer5_t, linear_config5>(layer3_out, layer5_out); // q_activation_18

    layer6_t layer6_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer6_out complete dim=0
    nnet::dense<layer5_t, layer6_t, config6>(layer5_out, layer6_out, w6, b6); // q_dense_27

    layer8_t layer8_out[N_LAYER_6];
    #pragma HLS ARRAY_PARTITION variable=layer8_out complete dim=0
    nnet::linear<layer6_t, layer8_t, linear_config8>(layer6_out, layer8_out); // q_activation_19

    layer9_t layer9_out[N_LAYER_9];
    #pragma HLS ARRAY_PARTITION variable=layer9_out complete dim=0
    nnet::dense<layer8_t, layer9_t, config9>(layer8_out, layer9_out, w9, b9); // q_dense_28

    layer11_t layer11_out[N_LAYER_9];
    #pragma HLS ARRAY_PARTITION variable=layer11_out complete dim=0
    nnet::linear<layer9_t, layer11_t, linear_config11>(layer9_out, layer11_out); // q_activation_20

    layer12_t layer12_out[N_LAYER_12];
    #pragma HLS ARRAY_PARTITION variable=layer12_out complete dim=0
    nnet::dense<layer11_t, layer12_t, config12>(layer11_out, layer12_out, w12, b12); // q_dense_29

    layer14_t layer14_out[N_LAYER_12];
    #pragma HLS ARRAY_PARTITION variable=layer14_out complete dim=0
    nnet::linear<layer12_t, layer14_t, linear_config14>(layer12_out, layer14_out); // q_activation_21

    layer15_t layer15_out[N_LAYER_15];
    #pragma HLS ARRAY_PARTITION variable=layer15_out complete dim=0
    nnet::dense<layer14_t, layer15_t, config15>(layer14_out, layer15_out, w15, b15); // q_dense_30

    nnet::softmax<layer15_t, result_t, softmax_config17>(layer15_out, layer17_out); // activation_8

}
