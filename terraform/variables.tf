variable "aws_region" {
  description = "AWS region to launch servers."
  default = "us-east-1"
}

variable "s3_bucket" {
  description = "S3 Bucket for testing terraform plugin"
  default = "henka-sample-test-bucket"
}
