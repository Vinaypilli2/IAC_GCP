resource "google_sql_database_instance" "default" {
    name = "db-instance"
    region = var.region
    database_version = "POSTGRES_14"
    settings {
      tier = "db-f1-micro"
    }
  }

  
