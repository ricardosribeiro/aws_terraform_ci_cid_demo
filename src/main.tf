terraform {
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "aws_s3_demo_bucket_media" {
  bucket        = "aws-s3-demo-bucket-media-112233"
  force_destroy = true
}

resource "aws_s3_bucket" "aws_s3_demo_bucket_storage" {
  bucket        = "aws-s3-demo-bucket-storage-112233"
  force_destroy = true
}