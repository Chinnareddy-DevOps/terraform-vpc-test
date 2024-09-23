terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.0"
    }
  }
  backend "s3" {
    bucket = "chinnareddy-remote-state"
    key    = "vpc-test"
    region = "us-east-1"
    dynamodb_table = "chinna-locking"
  }
}

#provide authentication here
provider "aws" {
  region = "us-east-1"
}