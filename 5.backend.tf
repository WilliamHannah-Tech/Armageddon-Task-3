# https://www.terraform.io/language/settings/backends/gcs
terraform {
  backend "gcs" {
    bucket      = "armageddonbucket"
    prefix      = "terraform/state"
    credentials = "theowaf-class65-wh-62c8f38ca963.json"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}  
