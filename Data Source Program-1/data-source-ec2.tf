provider "aws" {
  region = "ap-south-1"
}

data "aws_instance" "foo" {
  filter {
    name   = "tag:Name"
    values = ["FirstEC2"]
  }
}
