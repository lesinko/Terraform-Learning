# configured aws provider with proper credentials
provider "aws" {
  region  = "us-east-1"
  profile = "db-test-user" #create a profile that contains the access & secret keys
}

