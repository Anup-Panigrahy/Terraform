provider "aws" {

}

resource "aws_instance" "instance_creation_using_map_and_list_datatype" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.list[0]                              // As I have done here var.list[0] -> Hence I have got output of t3.micro and EC2 instance creation of t3.micro
                                                           // If I would have done here var.list[1] -> Hence I have got output of t3.small and EC2 instance creation of t3.small

  tags = {
    Name = "instance_creation_using_map_and_list_datatype" // Key-Value pair for tagging the instance
  }
}

variable "list" {
  description = "Type of the AWS instance"
  type        = list
  default     = ["t3.micro", "t3.small"]
}
