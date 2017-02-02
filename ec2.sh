#!/bin/bash
clear
#aws cloudformation validate-template --region us-east-1 --template-body /c/Users/tatroc/Documents/aws/EC2_Instance_With_Ephemeral_Drives.json 
aws cloudformation deploy --region us-east-1 --template-file /c/Users/tatroc/Documents/aws/EC2_Instance_With_Ephemeral_Drives.json --stack-name my-new-stack-2  --parameter-overrides KeyName=ctatro InstanceType=t1.micro SSHLocation="0.0.0.0/0"
#aws cloudformation describe-stack-events --region us-east-1 --stack-name my-new-stack