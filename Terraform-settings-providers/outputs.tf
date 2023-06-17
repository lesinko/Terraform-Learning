# aws ec2 public ip
output "instance_publicip" {
    value = aws_instance.myec2.public_ip
    description = "aws ec2 instance public ip"
}