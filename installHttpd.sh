#!/bin/bash

sudo su
yum install httpd -y
echo "Welcome to Ashok IT" > index.html
service httpd start