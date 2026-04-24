provider "aws" {
    region="ap-south-1"
	access_key="AKIA6CJLBZLYLKZYTD5P"
	secret_key="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"
}

resource "aws_instance" "MyAWSVM" {
    ami="ami-03793655b06c6e29a"
	instance_type="t3.micro"
	key_name="AWS-1stKeyPair-2026"
	vpc_security_group_ids=["sg-01911be532bafb8c7"]
	tags={
	    Name="My EC2 VM by First Terraform script"
	}
}