#create ec2 instance resource
resource "aws_instance" "myec2" {
    ami = "ami-022e1a32d3f742bd8"
    instance_type = "t2.micro"
    user_data = file("${path.module}/apache.sh")
    tags = {
        "Name" = "test-ec2"
    }
  
}