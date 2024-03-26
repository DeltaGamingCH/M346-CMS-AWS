#!/bin/bash

# Ask for instance ID and security group name
read -p "Please enter the Instance ID: " INSTANCE_ID
read -p "Please enter the Security Group Name: " SECURITY_GROUP_NAME

# Terminate EC2 instance
aws ec2 terminate-instances --instance-ids $INSTANCE_ID
echo "Terminating the EC2 instance..."

# Wait until the instance is terminated
aws ec2 wait instance-terminated --instance-ids $INSTANCE_ID
echo "EC2 instance terminated."

# Delete security group
aws ec2 delete-security-group --group-name $SECURITY_GROUP_NAME
echo "Security group deleted."
