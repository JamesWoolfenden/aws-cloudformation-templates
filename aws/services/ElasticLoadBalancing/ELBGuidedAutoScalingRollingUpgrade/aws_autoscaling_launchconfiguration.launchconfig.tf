resource "aws_launch_configuration" "LaunchConfig" {
  image_id      = "ami-6869aa05"
  instance_type = "t2.small"
  name="LaunchConfig"
  associate_public_ip_address=false
  ebs_optimized= false
  enable_monitoring=false
  security_groups=[]
  user_data=<<EOF
#!/bin/bash -xe
yum update -y aws-cfn-bootstrap
/opt/aws/bin/cfn-init -v          --stack goformation-stack         --resource LaunchConfig          --configsets full_install          --region us-east-1
/opt/aws/bin/cfn-signal -e $?          --stack goformation-stack         --resource WebServerGroup          --region us-east-1

EOF
}
