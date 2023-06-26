#!bin/bash
mkdir -p ~/.aws/
echo """ 
[default]
aws_access_key_id = YOUR_AWS_ACCESS_KEY_ID
aws_secret_access_key = YOUR_SECRET_ACCESS_KEY
""" > ~/.aws/credentials

echo """ 
[default]
region = us-east-2
output = json
""" > ~/.aws/config


