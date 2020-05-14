resource "google_compute_network" "vpc_network" {
  name                    = "vpc-${var.}"
  auto_create_subnetworks = "false"
  project                 = "${var.gcp_project_id}"
}

resource "random_id" "instance_id" {
    byte_length = 8
}

resource "random_shuffle" "random_cidr" {
    input = var.cidr
}


resource "random_shuffle" "random_region" {
    input = var.region
}
resource "google_compute_subnetwork" "subnet-1" {
    name = "subnet-${random_id.instance_id.hex}-var"
    network = "${google_compute_network.vpc_network.self_link}"
    ip_cidr_range = "${random_shuffle.random_cidr.result[0]}"
    region = "${random_shuffle.random_region.result[0]}"
    project       = "${var.gcp_project_id}"
}
