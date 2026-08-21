provider "aws" {
  region = "ap-south-1"
}


resource "aws_instance" "my_ec2" {
  ami           = "ami-0011550b539717e2a"
  instance_type = var.instance_type
}