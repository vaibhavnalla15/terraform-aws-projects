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

# backend configuration
terraform {
  backend "s3" {
    bucket       = "tf-state-lock-0202"
    key          = "dev/terraform.tfstate"
    region       = "us-east-1"
    use_lockfile = "true"
    encrypt      = true
  }
}

# create s3 bucket  

resource "aws_s3_bucket" "tf-bucket" {
  bucket = "tf-bucket-0202"

  tags = {
    Name        = "My bucket-2.0"
    Environment = "Prod"
  }
}