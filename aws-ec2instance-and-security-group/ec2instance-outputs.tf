# AWS EC2 Instance Terraform Outputs
# Public EC2 Instances - Bastion Host

# bastion_public_instance_ids

output "bastion_instance_id" {
  description = "The ID of the instance"
  value       = module.bastion_instance.id
}

#bastion_public_ip
output "bastion_public_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.bastion_instance.public_ip
}

# Private ec2-instance
# private_instance_ids

output "private_instance_id" {
  description = "The ID of the instance"
  value       = module.private_instance.id
}

#bastion_public_ip
output "private_ip" {
  description = "The public IP address assigned to the instance, if applicable. NOTE: If you are using an aws_eip with your instance, you should refer to the EIP's address directly and not use `public_ip` as this field will change after the EIP is attached"
  value       = module.private_instance.private_ip
}