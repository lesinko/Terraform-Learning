#aws region
variable "aws_region" {
  description = "Region to provision aws resources"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "vpc name"
  type = string
  default = "dev-vpc"
}

variable "vpc_cidr_block" {
  description = "vpc cidr block"
  type = string
  default = "10.0.0.0/16"
}

variable "vpc_availability_zones" {
  description = "vpc availability zones"
  type = list(string)
  default = [ "us-east-1a", "us-east-1b" ]
}

variable "vpc_public_subnets" {
  description = "vpc public subnets"
  type = list(string)
  default = [ "10.0.101.0/24", "10.0.102.0/24" ]
}

variable "vpc_private_subnets" {
  description = "vpc private subnets"
  type = list(string)
  default = [ "10.0.1.0/24", "10.0.2.0/24" ]
}

variable "vpc_database_subnets" {
  description = "vpc database subnets"
  type = list(string)
  default = ["10.0.150.0/24", "10.0.151.0/24"]
}

variable "vpc_create_database_subnet_group" {
  description = "vpc Create Database Subnet Group"
  type = bool
  default = true 
}

variable "vpc_create_database_subnet_route_table" {
  description = "vpc Create Database Subnet Route Table"
  type = bool
  default = true   
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT Gateways for Private Subnets Outbound Communication"
  type = bool
  default = true  
}

variable "vpc_single_nat_gateway" {
  description = "Enable only single NAT Gateway in one Availability Zone"
  type = bool
  default = true
}
