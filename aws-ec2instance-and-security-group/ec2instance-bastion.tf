module "bastion_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"

  name = "bastion-host"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
 # monitoring             = true
  subnet_id              = module.vpc.public_subnets
  vpc_security_group_ids = [module.bastion_sg.security_group_vpc_id]

}