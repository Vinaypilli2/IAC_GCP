terraform {
  required_version = ">= 1.3.0"
  required_providers {
    google = {
        source = "hashicorp/google"
        version = ">= 4.0.0"
    }
  }
}    

provider "google" {
  project = var.project_id
  region = var.region
}

module "iam" {
  source = "./modules/iam"
}

module "service_account" {
  source = "./modules/service_account"
}

module "storage" {
  source = "./modules/storage"
}

module "vpc" {
  source = "./modules/vpc"
}

module "sql" {
  source = "./modules/sql"
}

module "budget" {
  source = "./modules/budget"
}

module "gke" {
  source = "./modules/gke"
}

module "cloudrun" {
  source = "./modules/cloudrun"
}   