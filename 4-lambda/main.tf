// AWS Region
provider "aws" {
  region = "us-west-2"
}
/*
terraform {
  backend "s3" {
    bucket         = "terraform-tfstate"
    key            = "global/s3/terraform.tfstate"
    region         = "us-west-2"
    dynamodb_table = "terraform_tfstate"
    encrypt        = true
  }
}*/