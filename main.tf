terraform {
  required_version = "1.6.3"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.30.0"
    }
  }

  backend "s3" {}
}

provider "aws" {
  region     = var.aws_region
  # access_key = var.access_key
  # secret_key = var.secret_key
}

resource "aws_s3_bucket" "treino_terraform_bucket" {
  bucket = "gha-terraform-bucket-mac-${var.environment}-20231208-v2"
  tags   = var.tags
}