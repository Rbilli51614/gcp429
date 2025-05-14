resource "google_compute_subnetwork" "hqinternal" {
  name                     = "hqinternal"
  ip_cidr_range            = "10.247.10.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "lannester" {
  name                     = "lannester"
  ip_cidr_range            = "10.247.20.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "stark" {
  name                     = "stark"
  ip_cidr_range            = "10.247.30.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.main.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "hqinternal2" {
  name                     = "hqinternal2"
  ip_cidr_range            = "10.247.40.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "lannester2" {
  name                     = "lannester2"
  ip_cidr_range            = "10.247.50.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}
resource "google_compute_subnetwork" "stark2" {
  name                     = "stark2"
  ip_cidr_range            = "10.247.60.0/24"
  region                   = "us-south1"
  network                  = google_compute_network.andor.id
  private_ip_google_access = true
}