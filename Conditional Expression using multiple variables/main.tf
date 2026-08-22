provider "aws" {

}
variable "Environment" {
  default = "Production"
  type    = string

}

variable "region" {
  default = "ap-south-1"
  type    = string
}

resource "aws_instance" "Conditional_expression_using_multiple_variables" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.Environment == "Production" && var.region == "ap-south-1" ? "t3.small" : "t3.micro"
  tags = {
    Name        = "Conditional_expression_using_multiple_variables"
    Environment = var.Environment
    region      = var.region
  }
}

output "instance_type" {
  value = aws_instance.Conditional_expression_using_multiple_variables.instance_type
}

output "Environment" {
  value = var.Environment
}

output "region" {
  value = var.region
}
