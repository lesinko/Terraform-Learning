#aws security group for public bastion host
module "bastion_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name = "bastion-sg"
  description = "security Group with SSH and egress ports open"
  vpc_id = module.vpc.vpc_id

  #ingress rules & cidr-block
  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-ssh-tcp"]

  # egress rules - all open
    egress_rules = ["all-all"]

}