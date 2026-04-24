provider "aws" {
    region="ap-south-1"
}

resource "aws_instance" "MyAWSVM" {
    ami="ami-03793655b06c6e29a"
	instance_type="t3.micro"
	key_name="AWS-1stKeyPair-2026"
	vpc_security_group_ids=["sg-01911be532bafb8c7"]
	tags={
	    Name="EC2 VM by Terraform script without hardcode of Access Key and Secret Key"
	}
}
/*

│ Error: creating EC2 Instance: operation error EC2: RunInstances, https response error StatusCode: 403, RequestID: 08029a71-b9d5-466d-a865-61638feba2dd, api error UnauthorizedOperation: You are not authorized to perform this operation. User: arn:aws:iam::966994807536:user/Anup is not authorized to perform: ec2:RunInstances on resource: arn:aws:ec2:ap-south-1:966994807536:instance/* with an explicit deny in an identity-based policy: arn:aws:iam::aws:policy/AWSCompromisedKeyQuarantineV3. Encoded authorization failure message: GHi3Mmcygm9wNWTtxemhhQKYGdXfcL1Dn5TQURkzFSRZy-6icjPACU2tFO2ZAIJkiKFhxpmkWDKKQST0VHWniSQhulAQHDYslc77m2IJY5iQU-bxKl2Ik6qMBy_su6iapFhCMI_WT6u9lSEVNgJXDjx5rYBJRU8j53_Sg3Dt2-cSRijj25pyMTW7SqLdK3h0yHM9QlVq3h3dlycMXgeMcTcezlQF-qRDYex1YNmWc9JeXftd7j3Ou0H0z3fY3bS-PjiJ7FcwspQzOiElbZRuLfBgVqEQuGNEKI1b-8n8o6eqJcMNO7TTiDphFQm5Cv409AZOWGfBGQJy3WWlV4C3pF1KU_0ViW7ML1jOeXYrxsX9lKupnpFo3AmwcRMTDiAvk1wSytPEFBeHKVg4wdxCbg_OZ4mFFm4MqXEqG0ChJw8nNFmQKcfIQyWUOCCEzBPSJcgHQq8LfdITkZAtj5D52qpl03Vs5EcmMd_BtcQwkpIPCZvTr445KpGCXY6sOA8uYllvnJ0Lsuz0esIYWYBFrPYe60jUrqX1nnWR6V-QvaCzGDaUBIGE7e3kdwPEf-IzOuGtNLKTT4TnP63cRixlbM0v19kRkKLap37hNJiGrABmnW-RyyCp4SC5jkV1tcGzz7hjgOn1T8JpyuqOHAfA1hkAo9X34a7jq0Y9ZtvqqUVG4T8ZuSRLmKXNnzJG5ZzyFhvSNcQVbSobxeliaaTYpOOaaCARMaonH29ZHbjc0Q8t9BKFOF_TAs2MoSIS9RNW64ITfWPU31R6uvhRjqh0bdFR7YYl62cXqu0fAx2mwY5aEQ1rrgoTD7HHXHgrEXb-SGA3F9XzITqbqo2HQJrLmhoLbQjIkUmPsoYnxksWYd4LlWpjAd_QLrjIsST_BbZj023L_Aw4CPFt0_LYUrmO2W3OVT1yDHYgYAEhd9NONaunwRjh2rcTcWsJVQRpRdtOkjLnNGrDKOlClK9gL8F26tUO-CB4YB7meg70T0j_ZpKkBJA-9mrqRkphYKZFRQunaad5cm0o7BmUlMdzSvU-EHOJndNLjGh0cZ-JhX-gULrjj8JcirIhdkePaGlkufdx6dsOUmj4V5YsONELRQT2ncNRy2LoPjUVIqfXcA_DEiGRtmrT66qV2F6vSa7Rrc3ql_gPyPU7mDSMtsps8fC-MbYDi-nZGkCWhVnED7BNmolYC-JtkRjIYbQo5f8DZUQijcSVMMsx9r6mGfkNSpPI-e90lim7OnLsq-ns5GTx12e3ugslI27f7gdXg4yPCQvAW7DY7Fp1w48DcJrF_f4fbsXB2e6vvmimBi-3z9mKkUBpJQEihH5BplEL7BWBhszZtm5FP7CSbJm_PDAfw_c8oX4W_MzVX-s30eQ3Ivf5PBhJlShpqw4tDod5da2QVevHdzk86U8JXiWf960L0-PX5m-lQkFWTXGkENk1UMBYFURySGPsm-LbgjCYcwoEW9jVhuQk14cO3fR8fpIKizMDUFnm6Vz93m4TnSBkYZfvz_lztnGsUghBIU7qzlCA3zwKlrNjXFbp9-E2nD2UUBZWdbD1uhcqFUHt9lYHzgd74IOPXxeNeK-zJBzlr3i846kBCIpScEF3N1BD-U2LwRqTkNdPCPXByMDgrRX8EhMwipLAf-JdCIJhs1q3ytpvfvoJNIIrzMVw_Zk0bqhC3ZchsYN0iQN56rfZPdqAs7VNWxxcP8DT_bTpM3slg-zmhLDLIlPPUSPTViVwvmW69hOK4kxoWY43sdIUZ1Orp7PyWWedUCL3bbG29MgdpedcUeJ9G6h6Cqr9gQLi4QgRCNTV6t-u2GB53cofO1MX4ZoVzlGNtG0hfiTXSymsRSsm7nkBsRExgkkKtlT44gmbjzzImGPZo8_GtEr2oVLSWrnD55N3Oi2a6RzX1fbDixoWpQYe505m79YpwBqvXDslNM3heWaxdikR7SyNrpLPLCPSsWXqTRfJSjB4kuZmDBQum1cuyTZ1lLHl-1tB4NYhB2BZzDirBSNh5NPn2Du-K4fZ2a9TIkY6i1bmwuU22khNROyjGK9czehugkh70iAnaweBCNFIIxYONWUVdr9PX6k
│
│   with aws_instance.MyAWSVM,
│   on EC2VM_Creation_ByTerraformScript_WithoutHardcode_AccessKey_SecretKey.tf line 5, in resource "aws_instance" "MyAWSVM":
│    5: resource "aws_instance" "MyAWSVM" {
------
I will set these 2 variables in my server by export variablesexport AWS_ACCESS_KEY_ID="AKIA6CJLBZLYLKZYTD5P"
export AWS_SECRET_ACCESS_KEY="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"

[ec2-user@ip-172-31-38-29 ex-2]$ export AWS_ACCESS_KEY_ID="AKIA6CJLBZLYLKZYTD5P"
[ec2-user@ip-172-31-38-29 ex-2]$ export AWS_SECRET_ACCESS_KEY="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"
[ec2-user@ip-172-31-38-29 ex-2]$
[ec2-user@ip-172-31-38-29 ex-2]$ echo $AWS_ACCESS_KEY_ID
AKIA6CJLBZLYLKZYTD5P
[ec2-user@ip-172-31-38-29 ex-2]$ echo AWS_SECRET_ACCESS_KEY
AWS_SECRET_ACCESS_KEY
[ec2-user@ip-172-31-38-29 ex-2]$ echo $AWS_SECRET_ACCESS_KEY
f3iANzBhwdAM2Ad/VVYPfsMXrqElW59IY0adLcQo

then

Remove the "Quarantine" Policy
If you still get the error after using new keys, your IAM User might still have that Quarantine policy attached to it.

In the IAM Console for user Anup, check the Permissions tab.

If you see AWSCompromisedKeyQuarantineV3, Remove it. (Note: You may need to log in as the Root user to remove this if your Anup user doesn't have permission).

*/

