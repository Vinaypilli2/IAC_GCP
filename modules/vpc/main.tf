resource "google_compute_network" "vpc" {
    name = "shared_vpc"
    auto_create_subnetworks = false
  
}

resource "google_compute_subnetwork" "subnet" {
    name = "main-subnet"
    ip_cidr_range = "10.0.0.0/24"
    network = google_compute_network.vpc.self_link
    region = var.region
}
  
