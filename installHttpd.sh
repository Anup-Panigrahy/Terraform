#!/bin/bash

sudo su
yum install httpd -y
echo "<html><h1>Welcome to Ashok IT"</h1></html>" > index.html
service httpd start
------------------------------------------------------------------------------------------------------------------------
/*
I have not tested this.
This file has dependency with "Static Website by UserData by Terraform script.tf file which is present in this repository.
--------------------------------------------------------------------------------------------------------------------------------
