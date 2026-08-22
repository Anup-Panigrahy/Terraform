resource "aws_instance" "variable_precedence" {
  ami           = "ami-0011550b539717e2a"
  instance_type = var.instance_type
}
