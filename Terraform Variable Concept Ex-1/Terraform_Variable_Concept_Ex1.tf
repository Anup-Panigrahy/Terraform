provider "aws" {
  region = "ap-south-1"
}
resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"

}
resource "aws_vpc_security_group_ingress_rule" "allow_ssh_rule" {
  security_group_id = aws_security_group.allow_ssh.id
  ip_protocol       = "tcp"
  from_port         = var.qpp_port                     // Use the variable for the port
  to_port           = var.qpp_port                     // Use the variable for the port
  cidr_ipv4         = var.vpn_ip                       // Use the variable for the IP address
  description       = "Allow SSH inbound traffic for VPC"
}
