locals {
  kbst_cluster = "${var.kbt_cluster[terraform.workspace]}"
}

module "kbst" {
  provider = "google.europe-west3"

  source = "./platforms/gcloud/cluster"

  project_id  = "kbst-${terraform.workspace}"
  name_prefix = "kbst"
  base_domain = "${var.base_domain}"

  cluster_min_master_version = "${lookup(local.kbst_cluster, "cluster_min_master_version")}"
  cluster_initial_node_count = "${lookup(local.kbst_cluster, "cluster_initial_node_count")}"
  cluster_additional_zones   = "${lookup(local.kbst_cluster, "cluster_additional_zones")}"
}
