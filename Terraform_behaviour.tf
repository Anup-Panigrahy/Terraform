provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "my_ec2_instance" {
  ami           = "ami-07a00cf47dbbc844c"
  instance_type = "t3.small"
  tags = {
    Name = "MyEC2Instance for checking terraform behaviour"
  }
}

-------------------------------------------------------------------------------------------------------------------------------
1. First I created this file.
2. Then I created 1 EC2 instance by using this file.
3. Then I changed instance_type from "t3.small" to "t3.micro".
4. Then I ran "terraform plan"
5. Once I ran "terraform plan" , then I knew -> 0 to add, 1 to change, 0 to destroy.
   Terraform got to know by id from terraform.tfstate file.
6. If I changed state file name from terraform.tfstate to kplabs-terraform.tfsate
   then if I am running "terraform plan" 
      then It is saying -> 1 to add, 0 to change, 0 to destroy.
7. If I will do "terraform destroy"
   then It is saying -> 0 to add, 0 to change, 1 to destroy.
      then if I will check the file -> terraform.tfstate
           I am getting below :
---------------------------------------------------------------------------------------
ec2-user@ip-172-31-38-29:~/terraform_behaviour$ cat terraform.tfstate
{
  "version": 4,
  "terraform_version": "1.14.8",
  "serial": 3,
  "lineage": "2d459ae0-7adc-d683-fb31-63a2037233a8",
  "outputs": {},
  "resources": [],
  "check_results": null
}
------------------------------------------------------------------------------------
backup file / previous file -> terraform.tfstate Content
------------------------------------------------------------------------------------
ec2-user@ip-172-31-38-29:~/terraform_behaviour$ cat terraform.tfstate.backup
{
  "version": 4,
  "terraform_version": "1.14.8",
  "serial": 1,
  "lineage": "2d459ae0-7adc-d683-fb31-63a2037233a8",
  "outputs": {},
  "resources": [
    {
      "mode": "managed",
      "type": "aws_instance",
      "name": "my_ec2_instance",
      "provider": "provider[\"registry.terraform.io/hashicorp/aws\"]",
      "instances": [
        {
          "schema_version": 2,
          "attributes": {
            "ami": "ami-07a00cf47dbbc844c",
            "arn": "arn:aws:ec2:ap-south-1:966994807536:instance/i-0347a5781160286f2",
            "associate_public_ip_address": true,
            "availability_zone": "ap-south-1a",
            "capacity_reservation_specification": [
              {
                "capacity_reservation_preference": "open",
                "capacity_reservation_target": []
              }
            ],
            "cpu_options": [
              {
                "amd_sev_snp": "",
                "core_count": 1,
                "nested_virtualization": "",
                "threads_per_core": 2
              }
            ],
            "credit_specification": [
              {
                "cpu_credits": "unlimited"
              }
            ],
            "disable_api_stop": false,
            "disable_api_termination": false,
            "ebs_block_device": [],
            "ebs_optimized": false,
            "enable_primary_ipv6": null,
            "enclave_options": [
              {
                "enabled": false
              }
            ],
            "ephemeral_block_device": [],
            "force_destroy": false,
            "get_password_data": false,
            "hibernation": false,
            "host_id": "",
            "host_resource_group_arn": null,
            "iam_instance_profile": "",
            "id": "i-0347a5781160286f2",
            "instance_initiated_shutdown_behavior": "stop",
            "instance_lifecycle": "",
            "instance_market_options": [],
            "instance_state": "running",
            "instance_type": "t3.small",
            "ipv6_address_count": 0,
            "ipv6_addresses": [],
            "key_name": "",
            "launch_template": [],
            "maintenance_options": [
              {
                "auto_recovery": "default"
              }
            ],
            "metadata_options": [
              {
                "http_endpoint": "enabled",
                "http_protocol_ipv6": "disabled",
                "http_put_response_hop_limit": 2,
                "http_tokens": "required",
                "instance_metadata_tags": "disabled"
              }
            ],
            "monitoring": false,
            "network_interface": [],
            "outpost_arn": "",
            "password_data": "",
            "placement_group": "",
            "placement_group_id": "",
            "placement_partition_number": 0,
            "primary_network_interface": [
              {
                "delete_on_termination": true,
                "network_interface_id": "eni-079fc85b5712a84e6"
              }
            ],
            "primary_network_interface_id": "eni-079fc85b5712a84e6",
            "private_dns": "ip-172-31-40-32.ap-south-1.compute.internal",
            "private_dns_name_options": [
              {
                "enable_resource_name_dns_a_record": false,
                "enable_resource_name_dns_aaaa_record": false,
                "hostname_type": "ip-name"
              }
            ],
            "private_ip": "172.31.40.32",
            "public_dns": "ec2-13-234-78-46.ap-south-1.compute.amazonaws.com",
            "public_ip": "13.234.78.46",
            "region": "ap-south-1",
            "root_block_device": [
              {
                "delete_on_termination": true,
                "device_name": "/dev/sda1",
                "encrypted": false,
                "iops": 3000,
                "kms_key_id": "",
                "tags": {},
                "tags_all": {},
                "throughput": 125,
                "volume_id": "vol-0790e8e45fd298b9d",
                "volume_size": 8,
                "volume_type": "gp3"
              }
            ],
            "secondary_network_interface": [],
            "secondary_private_ips": [],
            "security_groups": [
              "default"
            ],
            "source_dest_check": true,
            "spot_instance_request_id": "",
            "subnet_id": "subnet-0215b81897e6ea3c3",
            "tags": {
              "Name": "MyEC2Instance for checking terraform behaviour"
            },
            "tags_all": {
              "Name": "MyEC2Instance for checking terraform behaviour"
            },
            "tenancy": "default",
            "timeouts": null,
            "user_data": null,
            "user_data_base64": null,
            "user_data_replace_on_change": false,
            "volume_tags": null,
            "vpc_security_group_ids": [
              "sg-0626a6d4b9321941e"
            ]
          },
          "sensitive_attributes": [],
          "identity_schema_version": 0,
          "identity": {
            "account_id": "966994807536",
            "id": "i-0347a5781160286f2",
            "region": "ap-south-1"
          },
          "private": "eyJlMmJmYjczMC1lY2FhLTExZTYtOGY4OC0zNDM2M2JjN2M0YzAiOnsiY3JlYXRlIjo2MDAwMDAwMDAwMDAsImRlbGV0ZSI6MTIwMDAwMDAwMDAwMCwicmVhZCI6OTAwMDAwMDAwMDAwLCJ1cGRhdGUiOjYwMDAwMDAwMDAwMH0sInNjaGVtYV92ZXJzaW9uIjoiMiJ9"
        }
      ]
    }
  ],
  "check_results": null
}
