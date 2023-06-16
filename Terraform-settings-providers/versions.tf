
# Terraform block
terraform {
  required_version = "~>1.4"
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "5.4.0"
    }
  }
}

#Provider block
provider "aws" {
    region = "us-east-1"
  
}