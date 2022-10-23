resource "aws_instance" "EC2Instance" {
  iam_instance_profile="CloudWatchAgentAdminRole"
  ami="ami-6e1a0117"
  instance_type="m4.2xlarge"
  user_data=<<-EOF
#!/bin/bash
wget https://s3.amazonaws.com/amazoncloudwatch-agent/debian/amd64/latest/amazon-cloudwatch-agent.deb -O /tmp/amazon-cloudwatch-agent.deb
dpkg -i /tmp/amazon-cloudwatch-agent.deb
apt-get update -y
apt-get  install -y python-pip
easy_install --script-dir /opt/aws/bin https://s3.amazonaws.com/cloudformation-examples/aws-cfn-bootstrap-latest.tar.gz
/opt/aws/bin/cfn-init -v --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1 --configsets default
/opt/aws/bin/cfn-signal -e $? --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1

EOF
  disable_api_stop= false
  ebs_optimized = false
  monitoring = false
  source_dest_check = false
}
