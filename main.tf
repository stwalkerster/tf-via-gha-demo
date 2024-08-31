terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = "~> 1.5.0"

  backend "s3" {}
}

provider "aws" {
  region = "eu-west-1"
}

data "aws_caller_identity" "this" {}

