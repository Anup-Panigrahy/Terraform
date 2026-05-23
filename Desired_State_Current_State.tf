provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.small"
  tags = {
    Name = "MyEC2Instance for checking desired state and current state"
  }
}
------------------------------------------------------
Important
----------
1. Terraform does NOT care if anyone is changing any attributes in any Cloud console.
Ex :
   In this above code , we have instance_type is "t3.small".
   if anyone of my teammate is changing instance_type attribute from "t3.small" to "t3.micro" in any cloud , then it won't reflect.

   We can know this behaviour of NOT REFLECTING ->
   ------------------------------------------------------------
   If we will run terraform plan
   then it will show
   to update
   instance_type = "t3.micro" -> "t3.small"

   because in our terraform .tf file t3.small is there and in our terraform.tfstate file t3.small is there.

2. If we want to change  "t3.small" to "t3.micro" then we have to change in our terraform .tf file , then only it will reflect.

      We can know this behaviour of REFLECTING ->
      ----------------------------------------------------------
      If we will run terraform plan
      -------------------------------------
      then it will show below
      ~ update in-place
      ~ instance_type                        = "t3.small" -> "t3.micro"

      terraform apply -auto-approve
      -------------------------------------
      ~ update in-place

      ~ instance_type                        = "t3.small" -> "t3.micro"
3. Default values are generally not considered to be our desired state.
   If we normally change these default values in any cloud , it will have no impact in terraform plan and terraform apply.

   we can know these default values in respective cloud console.

   ex:
   If we will change security group in AWS conslole from 1 to other,
   it won't show new one because if we will run terraform plan and terraform apply ,
   we can get to know that -> No changes. Your infrastructure matches the configuration
   because
   we have not changed anything in our terraform(.tf) file with respect to security group for that EC2 insatnce.
