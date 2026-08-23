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


// I can see this user and see that this policy(demo-user-policy) also been attched with this user -> Zeal-Vora.
// If I will open that policy , I can see that JSON what I have written in iam-user-policy.json
