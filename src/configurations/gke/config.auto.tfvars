clusters = {
  gke_zero = {
    # Settings for Apps-cluster
    apps = {
      # The Google cloud project ID to use
      project_id = ""

      # Set name_prefix used to generate the cluster_name
      # [name_prefix]-[workspace]-[region]
      # e.g. `name_prefix = kbst` becomes `kbst-apps-europe-west3`
      # for small orgs the name works well,
      # for bigger orgs consider department or team names
      name_prefix = ""

      base_domain = ""

      cluster_min_master_version = "1.11.2"
      cluster_initial_node_count = 1

      # FIXME: Use actual list when TF 0.12 finally supports heterogeneous maps
      cluster_additional_zones = "europe-west3-a,europe-west3-b,europe-west3-c"
    }

    # Settings for Ops-cluster
    # configuration here overwrites the values from apps
    ops = {
      # FIXME: Use actual list when TF 0.12 finally supports heterogeneous maps
      cluster_additional_zones = "europe-west3-a"
    }
  }
}
