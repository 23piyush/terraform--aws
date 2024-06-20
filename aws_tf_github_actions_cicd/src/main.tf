terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = "us-east-2"
}

module "tf-state" {
  source      = "../modules/tf-state"
  bucket_name = "cc-tf-state-backend-local-ci-cd"
}

