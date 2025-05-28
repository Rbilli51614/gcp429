resource "google_compute_firewall" "allow-ssh" {
  name    = "allow-ssh"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
}

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.main.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}



# resource "google_compute_firewall" "allow-ssh2" {
#   name    = "allow-ssh2"
#   network = google_compute_network.andor.name

#   allow {
#     protocol = "tcp"
#     ports    = ["22"]
# }

#   source_ranges = ["0.0.0.0/0"]
# }

# resource "google_compute_firewall" "allow-http2" {
#   name    = "allow-http2"
#   network = google_compute_network.andor.name

#   allow {
#     protocol = "tcp"
#     ports    = ["80", "443"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }

# resource "google_compute_firewall" "icmp" {
#   name    = "allow-icmp"
#   network = google_compute_network.andor.name

#   allow {
#     protocol = "icmp"
#   }

#   allow {
#     protocol = "tcp"
#     ports    = ["80", "8080", "1000-2000"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }
# resource "google_compute_firewall" "rdp" {
#   name    = "rdp"
#   network = google_compute_network.andor.name

#   allow {
#     protocol = "tcp"
#     ports    = ["3389"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }
resource "google_compute_firewall" "icmp2" {
  name    = "allow-icmp2"
  network = google_compute_network.main.name
  
  allow {
    protocol = "icmp"
  }

  allow {
    protocol = "tcp"
    ports    = ["80", "8080", "1000-2000"]
  }

  source_ranges = ["0.0.0.0/0"]
}
# resource "google_compute_firewall" "rdp2" {
#   name    = "rdp2"
#   network = google_compute_network.main.name

#   allow {
#     protocol = "tcp"
#     ports    = ["3389"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }

# resource "google_compute_firewall" "main-db" {
#   name    = "main-db"
#   network = google_compute_network.main.name

#   allow {
#     protocol = "tcp"
#     ports    = ["1521", "33006"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }
# resource "google_compute_firewall" "andor-db" {
#   name    = "andor-db"
#   network = google_compute_network.andor.name

#   allow {
#     protocol = "tcp"
#     ports    = ["1521", "33006"]
#   }

#   source_ranges = ["0.0.0.0/0"]
# }