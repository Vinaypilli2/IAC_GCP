resource "google_storage_bucket" "default" {
  name = "${var.project_id}-bucket"
  location = var.region
  force_destroy = true
}