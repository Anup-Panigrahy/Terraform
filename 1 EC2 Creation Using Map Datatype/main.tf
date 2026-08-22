provider "aws" {

}

resource "aws_instance" "EC2_Instance_creation_by_Map_datatype" {
  ami           = "ami-01a00762f46d584a1"
  instance_type = var.map["us-east-1"]        // As I have done here var.map["us-east-1"] -> Hence I have got output of t3.small and EC2 instance creation of t3.small and region will be us-east-1
                                              // If I have done here var.map["ap-south-1"] -> Hence I have got output of t3.micro and EC2 instance creation of t3.micro and region will be ap-south-1
  tags = {
    Name = "1_EC2_Instance_creation_by_Map_datatype"
  }
}

variable "map" {
  type = map
  default = {
    ap-south-1 = "t3.micro"
    us-east-1  = "t3.small"
  }
}
