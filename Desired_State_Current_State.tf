provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.small"
  tags = {
    Name = "MyEC2Instance for checking desired state and current state"
  }
}