resource "google_compute_instance" "sample-vm" {
  name         = "public-dallas-1"
  machine_type = "e2-medium"
  zone         = "us-south1-a"

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

resource "google_compute_instance" "public-lannester-1" {
  name         = "public-lannester-1"
  machine_type = "e2-medium"
  zone         = "us-south1-b"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-12"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.lannester.name
    access_config {
      // Ephemeral public IP
    }
  }

  metadata_startup_script = file("./startup.sh")

}