#aws region
variable "aws_region" {
  description = "Region to provision aws resources"
  type        = string
  default     = "us-east-1"
}