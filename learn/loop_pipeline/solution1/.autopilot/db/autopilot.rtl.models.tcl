set SynModuleInfo {
  {SRCNAME loop_pipeline MODELNAME loop_pipeline RTLNAME loop_pipeline IS_TOP 1
    SUBMODULES {
      {MODELNAME loop_pipeline_ama_addmuladd_9s_9s_8ns_20s_20_4_1 RTLNAME loop_pipeline_ama_addmuladd_9s_9s_8ns_20s_20_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME loop_pipeline_gmem_m_axi RTLNAME loop_pipeline_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME loop_pipeline_control_s_axi RTLNAME loop_pipeline_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
