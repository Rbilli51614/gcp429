# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router_nat
resource "google_compute_router_nat" "us-south-NAT" {
  name   = "us-south-nat"
  router = google_compute_router.us-south-router.name
  region = "us-south1"

  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  nat_ip_allocate_option             = "MANUAL_ONLY"

  subnetwork {
    name                    = google_compute_subnetwork.hqinternal.id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }

  nat_ips = [google_compute_address.us-south-nat.self_link]
}

# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_address
resource "google_compute_address" "us-south-nat" {
  name         = "us-south-nat"
  address_type = "EXTERNAL"
  network_tier = "PREMIUM"
  region = "us-south1"
}

