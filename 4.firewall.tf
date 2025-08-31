# Firewall for Armageddon 3


resource "google_compute_firewall" "allow-http" {
  name    = "allow-http"
  network = google_compute_network.armageddon.name

  allow {
    protocol = "tcp"
    ports    = ["80", "443"]
  }

  source_ranges = ["0.0.0.0/0"]
}



resource "google_compute_firewall" "icmp" {
  name    = "icmp"
  network = google_compute_network.armageddon.name

  allow {
    protocol = "icmp"
  }

  source_ranges = ["0.0.0.0/0"]
}

resource "google_compute_firewall" "rdp" {
  name    = "rdp"
  network = google_compute_network.armageddon.name

  allow {
    protocol = "tcp"
    ports    = ["3389"]
  }

  source_ranges = ["0.0.0.0/0"]
#   target_tags   = ["jump-box"]
  
}






