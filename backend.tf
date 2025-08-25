terraform {
  required_version = ">= 1.5.0"

  backend "s3" {
    bucket = "my-terraform-states-2025"
    key    = "workspace-demo/terraform.tfstate"
    region = "eu-north-1"
    encrypt = true
  }
}

