variable "base_domain" {
  description = "Base domain used for internal purposes."
  default     = "infra.example.com"
}

variable "kbt_cluster" {
  description = "Per workspace cluster configuration."

  default = {
    apps = {
      cluster_availability_zones = [
        "eu-west-1a",
        "eu-west-1b",
        "eu-west-1c",
      ]

      cluster_instance_type    = "t2.small"
      cluster_desired_capacity = "1"
      cluster_max_size         = "3"
      cluster_min_size         = "1"
    }

    ops = {
      cluster_availability_zones = [
        "eu-west-1a",
      ]

      cluster_instance_type    = "t2.small"
      cluster_desired_capacity = "1"
      cluster_max_size         = "1"
      cluster_min_size         = "1"
    }
  }
}
