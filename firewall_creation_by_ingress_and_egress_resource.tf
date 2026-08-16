provider "aws" {
  region = "ap-south-1"
}

resource "aws_security_group" "firewall_creation_by_ingress_and_egress_resource" {
  name        = "firewall_creation_by_ingress_and_egress_resource"
  description = "firewall_creation_by_ingress_and_egress_resource"
  vpc_id      = "vpc-083bd8d7d7435736c"

  tags = {
    Name = "firewall_creation_by_ingress_and_egress_resource"
  }
}

resource "aws_vpc_security_group_ingress_rule" "Allow_HTTP_Traffic" {
  security_group_id = aws_security_group.firewall_creation_by_ingress_and_egress_resource.id
  cidr_ipv4         = "0.0.0.0/0"
  from_port         = 80
  to_port           = 80
  ip_protocol       = "tcp"

}

resource "aws_vpc_security_group_ingress_rule" "Allow_SSH_Connection" {
  security_group_id = aws_security_group.firewall_creation_by_ingress_and_egress_resource.id
  cidr_ipv6         = "::/0"
  from_port         = 22
  to_port           = 22
  ip_protocol       = "tcp"

}

resource "aws_vpc_security_group_egress_rule" "Allow_All_Outbound_Traffic_of_IPv4" {
  security_group_id = aws_security_group.firewall_creation_by_ingress_and_egress_resource.id
  cidr_ipv4         = "0.0.0.0/0"
  ip_protocol       = "-1"
}

resource "aws_vpc_security_group_egress_rule" "Allow_All_Outbound_Traffic_of_IPv6" {
  security_group_id = aws_security_group.firewall_creation_by_ingress_and_egress_resource.id
  cidr_ipv6         = "::/0"
  ip_protocol       = "-1"
}
