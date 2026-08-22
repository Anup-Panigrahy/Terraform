provider "aws" {
  region = "ap-south-1"
}

variable "user_names" {
  type    = list(string)
  default = ["Micky", "Rohan", "Pravin"]
}

resource "aws_iam_user" "AWS_Cloud_Users" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}

output "user_names" {
  value = aws_iam_user.AWS_Cloud_Users[*].name
}

output "users_count" {
  value = length(aws_iam_user.AWS_Cloud_Users)
}
