#input variables
#aws region
variable "aws_region" {
  description = "Region to provision aws resources"
  type        = string
  default     = "us-east-1"
}

#aws ec2 instance type
variable "instance_type" {
  description = "instance type for ec2"
  type        = string
  default     = "t2.micro"

}

#aws ec2 instance type list
 /*  variable "instance_type_list" {
      description = "ec2 instance type list"
      type = list(string)
      default = [ "t2.micro", "t2.small", "t3.medium" ]
   
}
*/ 

#aws ec2 instance type map
  /* variable "instance_type_map" {
      description = "ec2 instance type"
      type = map(string)
      default = {
        "dev" = "t2.micro"
        "qa" = "t2.small"
        "prod" = "t3.medium"
        
      }
  */
# }
#aws ec2 key pair name
variable "instance_keypair" {
  description = "key pair associated with ec2 instance"
  type        = string
  default     = "test-key"

}