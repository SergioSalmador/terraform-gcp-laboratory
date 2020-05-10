variable "gcp_project_id" {
    type = string
    default = "agile-aleph-273106" 
}

variable "name_instance" {
    type = string
    default = "testing"
}


variable "machine_type" {
    type = string
    default = "f1-micro"
}

variable "zone" {
    type = string
    default = "europe-west1-b"
}

variable "image" {
    type = string
    default = "centos-cloud/centos-7"
}


