#!/bin/bash

# Ask for key pair name, instance name and security group name
read -p "Enter Key Pair Name: " KEY_PAIR_NAME
read -p "Enter Instance Name: " INSTANCE_NAME
read -p "Enter Security Group Name: " SECURITY_GROUP_NAME

# Create Key Pair
aws ec2 create-key-pair --key-name $KEY_PAIR_NAME --key-type rsa --query 'KeyMaterial' --output text > ~/.ssh/$KEY_PAIR_NAME.pem

# Create Security Group
echo "Creating Security Groups"
aws ec2 create-security-group --group-name $SECURITY_GROUP_NAME --description "Joomla-Setup"
aws ec2 authorize-security-group-ingress --group-name $SECURITY_GROUP_NAME --protocol all --port 80 --cidr 0.0.0.0/0
echo "creating EC2 Instance"

# Create EC2 Instance
EC2_INSTANCE_ID=$(aws ec2 run-instances --image-id ami-08c40ec9ead489470 --security-groups $SECURITY_GROUP_NAME --iam-instance-profile Name=LabInstanceProfile --user-data file://user-data.txt --query 'Instances[0].InstanceId' --output text)

# Get the public IP of the instance
EC2_PUBLIC_IP=$(aws ec2 describe-instances --filters Name=instance-id,Values=$EC2_INSTANCE_ID --query 'Reservations[].Instances[].PublicIpAddress' --output text)

echo "Please wait until Joomla is installed."
sleep 420
echo "Server-URL: http://$EC2_PUBLIC_IP/"
