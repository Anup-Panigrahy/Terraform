provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "Zeal-Vora" {
  name = "Zeal-Vora"
}

resource "aws_iam_user_policy" "Zeal_Vora_Policy" {
  name = "demo-user-policy"
  user = aws_iam_user.Zeal-Vora.name

  policy = file("./iam-user-policy.json")  // Here file function has been used.
}
