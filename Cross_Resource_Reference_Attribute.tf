provider "aws" {
  region = "ap-south-1"
}

resource "aws_eip" "my_elastic_ip" {
  domain = "vpc"
}

resource "aws_security_group" "allow_tls" {
  name = "cross-reference-security-group"
}

resource "aws_vpc_security_group_ingress_rule" "allow_tls_ipv4" {
  security_group_id = aws_security_group.allow_tls.id
  cidr_ipv4         = "${aws_eip.my_elastic_ip.public_ip}/32" // Reference to the Elastic IP resource -- Cross Resource Reference Attribute
  from_port         = 443
  to_port           = 443
  ip_protocol       = "tcp"

}