provider "aws" {
  region = "eu-north-1"
}

# Random suffix for uniqueness (global bucket names must be unique!)
resource "random_id" "suffix" {
  byte_length = 4
}

# S3 bucket with workspace name + random suffix
resource "aws_s3_bucket" "demo" {
  bucket = "demo-bucket-${terraform.workspace}-2025-${random_id.suffix.hex}"
}
