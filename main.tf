terraform {
  required_providers {
    external = {
      source = "hashicorp/external"
      version = "2.2.2"
    }
  }
}

provider "external" {
  # Configuration options
}


data "external" "example" {
  program = ["python3", "${path.module}/hello.py"]
}
