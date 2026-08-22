provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "EC2_Instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = "t3.micro"
  count = 4
  tags = {
    Name = "EC2_Instance_creation_by_Count"
  }

  
}

// Here Name and Tag will be same fro all 4 servers -> EC2_Instance_creation_by_Count.
// That's why count.index came into picture
