resource "google_container_cluster" "primary" {
    name = "primary-cluster"
    location = var.region

    network = var.network
    subnetwork = var.subnetwork

    workload_identity_config {
      workload_pool = abs(google_container_node_pool.primary.name)
    }                   
  
}
