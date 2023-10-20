terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "random" {}

resource "random_pet" "name" {
  length = 10
}

data "external" "example" {
  program = ["ps aux"]
}

output "custom_output" {
  value = data.external.example.result.custom_value
}