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
  bucket        = "demo_bucket_media_2398"
  force_destroy = true
}

resource "aws_s3_bucket" "aws_s3_demo_bucket_storage" {
  bucket        = "demo_bucket_storage_2398"
  force_destroy = true
}