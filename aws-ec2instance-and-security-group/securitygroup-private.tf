#aws security group for public bastion host
module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "private-sg"
  description = "security Group with HTTP & SSH open to our entire VPC block (IPv4 cidr)"
  vpc_id = module.vpc.vpc_id

  #ingress rules & cidr-block
  ingress_cidr_blocks = ["10.0.0.0/16"]
  ingress_rules       = ["ssh-tcp"]

  # egress rules - all open
    egress_rules = ["all-all"]

}