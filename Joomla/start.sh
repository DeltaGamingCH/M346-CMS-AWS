aws ec2 create-key-pair --key-name aws-gbs-cli --key-type rsa --query 'KeyMaterial' --output text > ~/.ssh/aws-gbs-cli.pem

# Security group erstellen
echo "Creating Security Groups"
aws ec2 create-security-group --group-name gbs-sec-group --description "Joomla-Setup"
aws ec2 authorize-security-group-ingress --group-name gbs-sec-group --protocol all --port 80 --cidr 0.0.0.0/0
echo "creating EC2 Instance"
# EC2 Erzeugen
<s-cli --security-groups gbs-sec-group --iam-instance-profile Name=LabInstanceProfile --user-data file://user-data.txt --query 'Ins>

# EC2_INSANCE_ID
EC2_PUBLIC_IP=$(aws ec2 describe-instances --filters Name=instance-id,Values=$EC2_INSTANCE_ID --query 'Reservations[].Instances[]>

echo "Please wait until Joomla is installed."
sleep 420
echo "Server-URL: http://%24ec2_public_ip/"
