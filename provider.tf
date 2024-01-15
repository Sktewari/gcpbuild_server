
terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.11.0"
    }
  }
}

provider "google" {
project = "shelly-project-409604"
region = "us-central1"
zone = "us-central1-1"
credentials = "./keys.json.json"
}