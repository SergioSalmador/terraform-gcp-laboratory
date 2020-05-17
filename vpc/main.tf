resource "google_compute_network" "vpc_network" {
  name                    = "vpc-${var.gcp_project_id}"
  auto_create_subnetworks = "false"
  project                 = var.gcp_project_id
}

#resource "random_id" "instance_id" {
#    byte_length = 8
#}

#resource "random_shuffle" "random_cidr" {
#    input = var.cidr
#}


#resource "random_shuffle" "random_region" {
#    input = var.region
#}

resource "google_compute_subnetwork" "subnet-1" {
    name = "subnet-${var.gcp_project_id}"
    network = "${google_compute_network.vpc_network.self_link}"
    ip_cidr_range = var.ip_cidr
    region = var.region
    project = var.gcp_project_id
}
