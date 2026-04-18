terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.41.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

# create s3 bucket  

resource "aws_s3_bucket" "tf-bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = "My bucket-2.0"
    Environment = var.environment
  }
}

