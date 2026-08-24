provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "myimage" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["*ubuntu*"]
  }
}

resource "aws_instance" "EC2Instance_creation_by_latest_AMI_ID" {
  ami           = data.aws_ami.myimage.id
  instance_type = "t3.micro"

  tags = {
    Name = "EC2Instance_creation_by_latest_AMI_ID"
  }
}

-----------------------------
Will test this , code wise good , but we have to test this.
------------------------------
Zeal Vora's code
---------
Documentation Referred:
https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/ami

Base Code used:
resource "aws_instance" "web" {
  ami           = ""
  instance_type = "t2.micro"
}
Final Code:
provider "aws" {
  region = "ap-south-1"
}

data "aws_ami" "myimage" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.myimage.image_id
  instance_type = "t2.micro"
}
