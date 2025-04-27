#ifndef MYPROJECT_BRIDGE_H_
#define MYPROJECT_BRIDGE_H_

#include "firmware/myproject.h"
#include "firmware/nnet_utils/nnet_helpers.h"
#include <algorithm>
#include <map>

// hls-fpga-machine-learning insert bram

namespace nnet {
bool trace_enabled = false;
std::map<std::string, void *> *trace_outputs = NULL;
size_t trace_type_size = sizeof(double);
} // namespace nnet

extern "C" {

struct trace_data {
    const char *name;
    void *data;
};

void allocate_trace_storage(size_t element_size) {
    nnet::trace_enabled = true;
    nnet::trace_outputs = new std::map<std::string, void *>;
    nnet::trace_type_size = element_size;
}

void free_trace_storage() {
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        void *ptr = i->second;
        free(ptr);
    }
    nnet::trace_outputs->clear();
    delete nnet::trace_outputs;
    nnet::trace_outputs = NULL;
    nnet::trace_enabled = false;
}

void collect_trace_output(struct trace_data *c_trace_outputs) {
    int ii = 0;
    for (std::map<std::string, void *>::iterator i = nnet::trace_outputs->begin(); i != nnet::trace_outputs->end(); i++) {
        c_trace_outputs[ii].name = i->first.c_str();
        c_trace_outputs[ii].data = i->second;
        ii++;
    }
}

// Wrapper of top level function for Python bridge
void myproject_float(
    float flatten_9_input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    float layer11_out[N_LAYER_9]
) {

    hls::stream<input_t> flatten_9_input_ap("flatten_9_input");
    nnet::convert_data<float, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(flatten_9_input, flatten_9_input_ap);

    hls::stream<result_t> layer11_out_ap("layer11_out");

    myproject(flatten_9_input_ap,layer11_out_ap);

    nnet::convert_data<result_t, float, N_LAYER_9>(layer11_out_ap, layer11_out);
}

void myproject_double(
    double flatten_9_input[N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1],
    double layer11_out[N_LAYER_9]
) {
    hls::stream<input_t> flatten_9_input_ap("flatten_9_input");
    nnet::convert_data<double, input_t, N_INPUT_1_1*N_INPUT_2_1*N_INPUT_3_1>(flatten_9_input, flatten_9_input_ap);

    hls::stream<result_t> layer11_out_ap("layer11_out");

    myproject(flatten_9_input_ap,layer11_out_ap);

    nnet::convert_data<result_t, double, N_LAYER_9>(layer11_out_ap, layer11_out);
}
}

#endif
