terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3-webapp-module" {
  source  = "app.terraform.io/bola-rotimi/s3-webapp-module/aws"
  version = "1.0.0"
  name   = var.name
  region = var.region
  prefix = var.prefix
}
