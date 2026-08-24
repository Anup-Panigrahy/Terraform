locals {
  common_tags = {
    Team = "DevOps"
  }
}

resource "aws_security_group" "SecurityGroup01" {
  name = "SecurityGroup01"
  tags = local.common_tags
}

resource "aws_security_group" "SecurityGroup02" {
  name = "SecurityGroup02"
  tags = local.common_tags
}


  
