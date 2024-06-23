
provider "aws" {
  region = "us-east-2"
}

terraform {
  backend "s3" {
    bucket = "myuniquebucket1222"
    key    = "aws/vpc-deploy/terraform.tfstate"
  }
}

resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main"
  }
}