provider "aws" {
  region = "eu-north-1"
}

resource "aws_s3_bucket" "demo" {
  bucket = "demo-bucket-${terraform.workspace}-2025"
}
