provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "EC2_Instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  count         = 4

  tags = {
    Name = "Ec2_Instance_creation_by_count.index-${count.index}"
  }
}

// Here Name and Tag will be Ec2_Instance_creation_by_count.index-0, Ec2_Instance_creation_by_count.index-1, Ec2_Instance_creation_by_count.index-2, Ec2_Instance_creation_by_count.index-3
// that's why count.index came into picture
