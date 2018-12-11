locals {
  kbst_cluster = "${var.kbt_cluster[terraform.workspace]}"
}

module "kbst" {
  provider = "aws.eu-west-1"

  source = "./platforms/aws/cluster"

  organization = "kbst-${terraform.workspace}"
  name_prefix  = "kbst"
  base_domain  = "${var.base_domain}"

  cluster_availability_zones = "${lookup(local.kbst_cluster, "cluster_availability_zones")}"
  cluster_instance_type      = "${lookup(local.kbst_cluster, "cluster_instance_type")}"
  cluster_desired_capacity   = "${lookup(local.kbst_cluster, "cluster_desired_capacity")}"
  cluster_max_size           = "${lookup(local.kbst_cluster, "cluster_max_size")}"
  cluster_min_size           = "${lookup(local.kbst_cluster, "cluster_min_size")}"
}
