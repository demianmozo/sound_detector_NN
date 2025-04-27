set SynModuleInfo {
  {SRCNAME {dense_latency<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<8, 2, 5, 3, 0>, config2>} MODELNAME dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_8_2_5_3_0_config2_s RTLNAME inference_dense_latency_ap_fixed_16_6_5_3_0_ap_fixed_8_2_5_3_0_config2_s}
  {SRCNAME {linear<ap_fixed<8, 2, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, linear_config3>} MODELNAME linear_ap_fixed_8_2_5_3_0_ap_fixed_16_6_5_3_0_linear_config3_s RTLNAME inference_linear_ap_fixed_8_2_5_3_0_ap_fixed_16_6_5_3_0_linear_config3_s}
  {SRCNAME {linear<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<8, 3, 5, 3, 0>, linear_config4>} MODELNAME linear_ap_fixed_16_6_5_3_0_ap_fixed_8_3_5_3_0_linear_config4_s RTLNAME inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_8_3_5_3_0_linear_config4_s}
  {SRCNAME {dense_latency<ap_fixed<8, 3, 5, 3, 0>, ap_fixed<16, 6, 5, 3, 0>, config5>} MODELNAME dense_latency_ap_fixed_8_3_5_3_0_ap_fixed_16_6_5_3_0_config5_s RTLNAME inference_dense_latency_ap_fixed_8_3_5_3_0_ap_fixed_16_6_5_3_0_config5_s
    SUBMODULES {
      {MODELNAME inference_mul_8s_6ns_14_1_1 RTLNAME inference_mul_8s_6ns_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_mul_8s_6s_14_1_1 RTLNAME inference_mul_8s_6s_14_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {linear<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 7, 4, 0, 0>, linear_config7>} MODELNAME linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config7_s RTLNAME inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config7_s}
  {SRCNAME {dense_latency<ap_fixed<16, 7, 4, 0, 0>, ap_fixed<16, 6, 5, 3, 0>, config8>} MODELNAME dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config8_s RTLNAME inference_dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config8_s
    SUBMODULES {
      {MODELNAME inference_mul_16s_5ns_19_1_1 RTLNAME inference_mul_16s_5ns_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_mul_16s_5s_19_1_1 RTLNAME inference_mul_16s_5s_19_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {linear<ap_fixed<16, 6, 5, 3, 0>, ap_fixed<16, 7, 4, 0, 0>, linear_config10>} MODELNAME linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config10_s RTLNAME inference_linear_ap_fixed_16_6_5_3_0_ap_fixed_16_7_4_0_0_linear_config10_s}
  {SRCNAME {dense_latency<ap_fixed<16, 7, 4, 0, 0>, ap_fixed<16, 6, 5, 3, 0>, config11>} MODELNAME dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config11_s RTLNAME inference_dense_latency_ap_fixed_16_7_4_0_0_ap_fixed_16_6_5_3_0_config11_s}
  {SRCNAME inference MODELNAME inference RTLNAME inference IS_TOP 1
    SUBMODULES {
      {MODELNAME inference_mul_32s_34ns_65_1_1 RTLNAME inference_mul_32s_34ns_65_1_1 BINDTYPE op TYPE mul IMPL auto LATENCY 0 ALLOW_PRAGMA 1}
      {MODELNAME inference_regslice_both RTLNAME inference_regslice_both BINDTYPE interface TYPE interface_regslice INSTNAME inference_regslice_both_U}
    }
  }
}
