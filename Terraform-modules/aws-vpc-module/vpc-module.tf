module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0"

  # vpc basic details
  name = "var.vpc_name"
  cidr = "10.0.0.0/16"

  azs             = ["us-east-1a", "us-east-1b"]
  private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]
  #database subnets
  database_subnets                   = ["10.0.150.0/24", "10.0.151.0/24"]
  create_database_subnet_group       = true
  create_database_subnet_route_table = true
  #NAT gateways
  enable_nat_gateway = true
  single_nat_gateway = true
  #dns parameters
  enable_dns_hostnames = true
  enable_dns_support   = true

  public_subnet_tags = {
    Name = "public-subnet"
  }
  private_subnet_tags = {
    Name = "private-subnet"
  }
  database_subnet_tags = {
    Name = "database-subnet"
  }
  tags = {
    Owner       = "test"
    Environment = "dev"
  }

  vpc_tags = {
    Name = "dev-vpc"
  }
}

