resource "aws_instance" "EC2Instance" {
  iam_instance_profile="CloudWatchAgentAdminRole"
  ami="ami-7707a10f"
  instance_type="m4.2xlarge"
  user_data=<<-EOF
#!/bin/bash
rpm -Uvh https://s3.amazonaws.com/amazoncloudwatch-agent/amazon_linux/amd64/latest/amazon-cloudwatch-agent.rpm
/opt/aws/bin/cfn-init -v --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1 --configsets default
/opt/aws/bin/cfn-signal -e $? --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1

EOF
  disable_api_stop= false
  ebs_optimized = false
  monitoring = false
  source_dest_check = false
}
