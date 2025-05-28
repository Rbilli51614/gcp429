resource "google_compute_instance" "sample-vm" {
  name         = "public-dallas-1"
  machine_type = "e2-medium"
  Region         = "us-south1"


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.hqinternal.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup.sh")

}