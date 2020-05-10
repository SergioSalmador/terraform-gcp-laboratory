
resource "google_compute_instance" "testing" {
 name         = var.name_instance
 machine_type = var.machine_type
 zone         = var.zone
 project      = var.gcp_project_id
 boot_disk {
   initialize_params {
     image = var.image
   }
 }


 network_interface {
   network = "default"

   access_config {
    // Ephemeral IP
  }
 }

 metadata_startup_script = file("./startup.sh")

}
