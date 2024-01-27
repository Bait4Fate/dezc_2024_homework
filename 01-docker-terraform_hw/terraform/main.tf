terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("de-zoomcamp-2024-412511-fc13c2a4ab86.json")

  project = "./de-zoomcamp-2024-412511"
  region  = "us-central1"
  zone    = "us-central1-c"
}

variable "project" {
  description = "Your GCP Project ID"
  default = "de-zoomcamp-2024-412511"
  type = string
}