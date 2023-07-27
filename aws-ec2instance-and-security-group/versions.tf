
# Terraform block
terraform {
  required_version = "~>1.4" # equal and above stated version
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>5.4.0"
    }
  }
}

#Provider block
provider "aws" {
  region = var.aws_region

}