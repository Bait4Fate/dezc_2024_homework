terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "de-zoomcamp-2024-412511"
  region  = "us-central1"
}



resource "google_storage_bucket" "data-lake-bucket" {
  name          = "b4f_bucket"
  location      = "US"

  # Optional, but recommended settings:
  storage_class = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled     = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30  // days
    }
  }

  force_destroy = true
}


resource "google_bigquery_dataset" "dataset" {
  dataset_id = "bigquery_data"
  project    = "de-zoomcamp-2024-412511"
  location   = "US"
}