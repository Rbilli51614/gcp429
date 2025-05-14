# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "us-south-router" {
  name    = "us-south-router"
  region  = "us-south1"
  network = google_compute_network.main.id
}