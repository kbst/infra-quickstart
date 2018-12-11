variable "base_domain" {
  description = "Base domain used for internal purposes."
  default     = "infra.example.com"
}

variable "kbt_cluster" {
  description = "Per workspace cluster configuration."

  default = {
    apps = {
      cluster_min_master_version = "1.11.2"
      cluster_initial_node_count = 1

      cluster_additional_zones = [
        "europe-west3-a",
        "europe-west3-b",
        "europe-west3-c",
      ]
    }

    ops = {
      cluster_min_master_version = "1.11.2"
      cluster_initial_node_count = 1

      cluster_additional_zones = [
        "europe-west3-a",
      ]
    }
  }
}
