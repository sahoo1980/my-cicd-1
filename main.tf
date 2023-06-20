provider "google" {
  credentials = "D:\\Papa\\MyPrograms\\my-key.json"
  project     = "learned-vault-387908"
  region      = "us-central1"
  zone        = "us-central1-a"
}

#Create NW
resource "google_compute_network" "my-network2" {
  name                    = "my-network-2"
  auto_create_subnetworks = false
}
#Create SubNW
resource "google_compute_subnetwork" "my-subnetwork2" {
  name          = "my-subnetwork-2"
  network       = google_compute_network.my-network2.self_link
  region        = "us-central1"
  ip_cidr_range = "10.0.0.0/16"
}
#Create FW
resource "google_compute_firewall" "my-firewall2" {
  name    = "my-firewall-2"
  network = google_compute_network.my-network2.self_link

  allow {
    protocol = "TCP"
    ports    = ["80", "444"]
  }
  source_ranges = ["0.0.0.0/0"]
}
