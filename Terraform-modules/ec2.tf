resource "aws_instance" "myec2" {
    ami = "04a0ae173da5807d3"
    instance_type = "t2.micro"
    tags = {
      Name= "test1"
    }
}

resource "aws_instance" "myec2usw2" {
    provider = aws.usw2
    ami = "080f7286ffdf988ee"
    instance_type = "t2.micro"
    tags = {
        Name = "test2"
    }
  
}

output "publicip_use1" {
    value = aws_instance.myec2.public_ip
  
}

output "publicip_usw2" {
    value = aws_instance.myec2usw2.public_ip
  
}