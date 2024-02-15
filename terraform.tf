terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.36.0"
    }
  }

  backend "s3" {
    encrypt              = true
    workspace_key_prefix = "delta"
  }
}

provider "aws" {
  region = "us-east-1"
}
