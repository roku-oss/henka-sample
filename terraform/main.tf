provider "aws" {
  region = "${var.aws_region}"
}

terraform {
  backend "s3" {
    region = "us-east-1"
  }
}

resource "aws_s3_bucket" "test_bucket" {
  bucket = "${var.s3_bucket}"
}
