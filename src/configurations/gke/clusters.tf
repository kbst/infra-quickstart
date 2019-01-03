module "gke_zero" {
  source = "github.com/kbst/terraform-kubestack//google/cluster"

  configuration = "${var.clusters["gke_zero"]}"
}
