terraform {
  required_version = ">= 0.13"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">=3.25.0"
    }
  }
  backend "s3" {
    bucket = "lmelo-spotsolr-tfstate"
    key = "prod/vpc/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "lmelo-spotsolr-tfstate-lock"
    encrypt = true
  }
}

provider "aws" {
  region = "us-east-1"
}
