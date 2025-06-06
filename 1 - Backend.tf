# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket = "firstbucket0000100000"
    prefix = "terraform/state"
    credentials = "gcpclass6-5rb-c135ba443005.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

# resource "google_compute_disk" "grafana_disk" {
#   name  = "grafana-disk"
#   type  = "pd-standard"
#   zone  = "us-central1-a"
#   size  = "10"
# }