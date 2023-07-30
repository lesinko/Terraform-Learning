module "private_instance" {
  depends_on = [ module.vpc ]
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "5.2.1"
  
  name = "private-vm"
  ami                    = data.aws_ami.amzlinux2.id
  instance_type          = var.instance_type
  key_name               = var.instance_keypair
 # monitoring             = true
  subnet_ids = [
    module.vpc.private_subnets[0],
    module.vpc.private_subnets[1]
  ]  
  vpc_security_group_ids = [module.private_sg.security_group_vpc_id]
  user_data = file("${path.module}/apache-install.sh")
  instance_count         = var.private_instance_count

}