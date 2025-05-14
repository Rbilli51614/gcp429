# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/google_project_service
resource "google_compute_network" "andor" {
    name                            = "andor"
    routing_mode                    = "REGIONAL"
    auto_create_subnetworks         = false
    mtu                             = 1460
    delete_default_routes_on_create = false
}