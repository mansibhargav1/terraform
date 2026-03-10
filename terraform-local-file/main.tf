terraform {
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.4.0"
    }
  }
}

provider "local" {}

resource "local_file" "example" {
  filename = "local-file.txt"
  content  = "This file is created using Terraform."
}
