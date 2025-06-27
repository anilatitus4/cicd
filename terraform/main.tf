terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
  credentials = "/Users/anilatitus/Desktop/creds/cicd-234.json"
}

resource "google_cloud_run_service" "flask_app" {
  name     = "flask-app"
  location = "us-central1"

  template {
    spec {
      containers {
        image = var.image_url
      }
    }
  }

  traffic {
    percent         = 100
    latest_revision = true
  }
}

output "cloud_run_url" {
  value = google_cloud_run_service.flask_app.status[0].url
}
