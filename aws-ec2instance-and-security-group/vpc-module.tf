module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.0.0" #lock to the specific version

  # vpc basic details
  name = "var.vpc_name"
  cidr = var.vpc_cidr_block

  azs             = var.vpc_availability_zones
  private_subnets = var.vpc_private_subnets
  public_subnets  = var.vpc_public_subnets
  #database subnets
  database_subnets                   = var.vpc_database_subnets
  create_database_subnet_group       = var.vpc_create_database_subnet_group
  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  #NAT gateways
  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway
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

