resource "google_storage_bucket" "default" {
  name          = "example-bucket"
  project       = "agile-aleph-273106"
  location      = "europe-west-2"
  storage_class = "COLDLINE"

  lifecycle_rule {
   condition {
      age = "3"
    }
    action {
      type = "SetStorageClass"
    }
  }

}

