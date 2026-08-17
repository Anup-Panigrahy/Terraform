provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "my_eip" {
  domain = "vpc"
}