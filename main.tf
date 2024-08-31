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


# resource "aws_s3_bucket" "github_test_bucket" {
#   bucket = "stwalkerster-${data.aws_caller_identity.this.account_id}-github-test-bucket"
# }


# resource "aws_s3_object" "test" {
#     bucket = aws_s3_bucket.github_test_bucket.bucket
#     key = "test1"
#     content = "test1"
# }