# AWS EC2 Security Group Terraform Outputs

# Public Bastion Host Security Group Outputs
# bastion_sg_group_id
output "bastion_sg_id" {
  description = "The ID of the security group"
  value       = module.bastion_sg.security_group_id
}

# bastion_sg_vpc_id
output "bastion_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.bastion_sg.security_group_vpc_id
}

#bastion_sg_group_name
output "bastion_sg_name" {
  description = "The name of the security group"
  value       = module.bastion_sg.security_group_name
}


# Private EC2 instance Security Group Outputs
# private_sg_group_id
output "private_sg_id" {
  description = "The ID of the security group"
  value       = module.private_sg.security_group_id
}

#private_sg_vpc_id
output "private_sg_vpc_id" {
  description = "The VPC ID"
  value       = module.private_sg.security_group_vpc_id
}

#private_sg_group_name
output "private_sg_name" {
  description = "The name of the security group"
  value       = module.private_sg.security_group_name
}