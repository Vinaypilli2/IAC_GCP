resource "google_cloud_run_service" "default" {
    name = "app-service"
    location = var.region
    template {
      spec {
        containers {
        image = "gcr.io/cloudrun/hello"
        }
      }
    }
    traffics {
        percent =100
        latest_revision = true
    }
}

