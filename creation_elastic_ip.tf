provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  tags = {
    Name = "EC2-Instance-with-ElasticIP"
  }
}

resource "aws_eip" "my_eip" {
  instance = aws_instance.my_instance.id
  domain   = "vpc"
}

output "instance_public_ip" {
  value = aws_eip.my_eip.public_ip
}