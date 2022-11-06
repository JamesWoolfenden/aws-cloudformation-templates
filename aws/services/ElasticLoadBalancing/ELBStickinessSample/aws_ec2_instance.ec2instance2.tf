resource "aws_instance" "EC2Instance2" {
  ami="ami-6869aa05"
  instance_type="t2.small"
  user_data=<<-EOF
#!/bin/bash -xe
yum update -y aws-cfn-bootstrap
/opt/aws/bin/cfn-init -v          --stack goformation-stack         --resource EC2Instance1          --region us-east-1
/opt/aws/bin/cfn-signal -e $?          --stack goformation-stack         --resource EC2Instance2          --region us-east-1

EOF
  disable_api_stop= false
  ebs_optimized = false
  monitoring = false
}
