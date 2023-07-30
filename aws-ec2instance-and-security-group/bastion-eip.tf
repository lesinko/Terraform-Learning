# Create Elastic IP for Bastion Host
# Resource - depends_on Meta-Argument

resource "aws_eip" "bastion_eip" {
  depends_on = [ module.bastion_instance, module.vpc ]
  instance = module.bastion_instance.id[0]
  vpc      = true
}