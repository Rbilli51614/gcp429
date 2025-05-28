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

# Regional Proxy-Only Subnet 
# Required for Regional Application Load Balancer for traffic offloading
resource "google_compute_subnetwork" "regional_proxy_subnet" {
  name          = "regional-proxy-subnet"
  region        = "us-south1"
  ip_cidr_range = "192.168.10.0/24"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.main.id
  role          = "ACTIVE"
}