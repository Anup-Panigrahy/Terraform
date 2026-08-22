provider "aws" {
  region = "ap-south-1"
}

variable "Environment" {
  description = "The environment for the resources"
  type        = string
  default     = "Development"
}

resource "aws_instance" "Conditional_Instance" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.Environment == "Development" ? "t3.micro" : "t3.small"

  tags = {
    Name        = "Conditional_Instance"
    Environment = var.Environment
  }
}
