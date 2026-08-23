provider "aws" {
  region = var.region
}
variable "region" {
  type    = string
  default = "ap-south-1"
}
variable "tags" {
  type    = list
  default = ["FirstEC2", "SecondEC2"]
}
variable "ami" {
  type = map
  default = {
    "ap-south-1" = "ami-0ac7b260cf76d8865"
    "us-east-1"  = "ami-0b6d9d3d33ba97d99"
  }
}
resource "aws_instance" "EC2_Instance_creation_by_using_Terraform_Function" {

  ami           = lookup(var.ami, var.region) // Output will be -> ami-0ac7b260cf76d8865
  instance_type = "t3.micro"
  count         = length(var.tags) // Output will be -> 2

  tags = {
    Name         = element(var.tags, count.index) // 
    Creationdate = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }
}

--------------------------
------------------------------







lookup(
    {
    "ap-south-1" = "ami-0ac7b260cf76d8865"
    "us-east-1"  = "ami-0b6d9d3d33ba97d99"
   }
  , "ap-south-1")

  // Output will be -> ami-0ac7b260cf76d8865
  -------------------
  length(var.tags)

  length(
    ["t3.micro", "t3.small"]
    )
------------
element(
    ["t3.micro", "t3.small"], 
    count.index)
--------------
This file contains the output that we had added as part of test.tf after analyzing each function

{
    a="ay"
    b="bee"
}
lookup({"us-east-1" = "ami-08a0d1e16fc3f61ea","us-west-2" = "ami-0b20a6f09484773af","ap-south-1" = "ami-0e1d06225679bc1c5"},"us-east-1")
resource "aws_instance" "app-dev" {
   ami = "ami-08a0d1e16fc3f61ea"
   instance_type = "t2.micro"
   count = 2

   tags = {
     Name = element(var.tags,count.index)
     CreationDate = "17 Jun 2024 17:51 UTC"
   }
}
length(["firstec2","secondec2"])
element(["firstec2","secondec2"],1)
formatdate("DD MMM YYYY hh:mm ZZZ", "2024-06-17T17:51:34Z")
------------------------------------------------------------------------------------------------------------------------
PS D:\DevOps_Cloud\DevOps\Terraform\Terraform Function-3> terraform console            
╷
│ Error: Inconsistent dependency lock file
│ 
│ The following dependency selections recorded in the lock file are inconsistent with the current configuration:
│   - provider registry.terraform.io/hashicorp/aws: required by this configuration but no version is selected
│ 
│ To make the initial dependency selections that will initialize the dependency lock file, run:
│   terraform init
╵

PS D:\DevOps_Cloud\DevOps\Terraform\Terraform Function-3> terraform init               
Initializing provider plugins found in the configuration...
- Finding latest version of hashicorp/aws...
- Installing hashicorp/aws v6.61.0...
- Installed hashicorp/aws v6.61.0 (signed by HashiCorp)

Initializing the backend...


Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
PS D:\DevOps_Cloud\DevOps\Terraform\Terraform Function-3> terraform console
> lookup(
:     {
:     "ap-south-1" = "ami-0ac7b260cf76d8865"
:     "us-east-1"  = "ami-0b6d9d3d33ba97d99"
:    }
:   , ap-south-1)
╷
│ Error: Invalid reference
│ 
│   on <console-input> line 6:
│   (source code not available)
│ 
│ A reference to a resource type must be followed by at least one attribute access, specifying the resource name.
╵


> lookup(
:     {
:     "ap-south-1" = "ami-0ac7b260cf76d8865"
:     "us-east-1"  = "ami-0b6d9d3d33ba97d99"
:    }
:   , "ap-south-1")
"ami-0ac7b260cf76d8865"
>   length(
:     ["t3.micro", "t3.small"]
:     )
2
> element(
:     ["t3.micro", "t3.small"], 
:     count.index)
╷
│ Error: Reference to "count" in non-counted context
│ 
│   on <console-input> line 3:
│   (source code not available)
│ 
│ The "count" object can only be used in "module", "resource", and "data" blocks, and only when the "count" argument is set.
╵


> > element(["a", "b", "c"], 1)
╷
│ Error: Invalid expression
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Expected the start of an expression, but found an invalid expression token.
╵


> "b"
"b"
> > element(["a", "b", "c"], 3)
╷
│ Error: Invalid expression
│ 
│   on <console-input> line 1:
│   (source code not available)
│ 
│ Expected the start of an expression, but found an invalid expression token.
╵


> "a"
"a"
> exit
PS D:\DevOps_Cloud\DevOps\Terraform\Terraform Function-3> 

-----------------------------
