resource "aws_instance" "variable_precedence" {
  ami           = "ami-0011550b539717e2a"
  instance_type = var.instance_type
}

// I've set up my Environment variable(by Edit the system Environment Variables in my system) as TF_VAR_instance_type=t3.large, that's why when I am running terraform plan and terraform apply -> 
// I am getting as t3.large in insatnce_type
// Because
// Environment Variable value gets highest precedence/priority over Default value assigned to variable in variables.tf file.
