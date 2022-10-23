resource "aws_instance" "EC2Instance" {
  iam_instance_profile="CloudWatchAgentAdminRole"
  ami="ami-3703414f"
  instance_type="m4.2xlarge"
  user_data=<<-EOF
<script>
mkdir C:\Downloads\Amazon\AmazonCloudWatchAgent
powershell -Command "(New-Object Net.WebClient).DownloadFile('https://s3.amazonaws.com/amazoncloudwatch-agent/windows/amd64/latest/amazon-cloudwatch-agent.msi','C:\Downloads\Amazon\AmazonCloudWatchAgent\amazon-cloudwatch-agent.msi')"
C:\Downloads\Amazon\AmazonCloudWatchAgent\amazon-cloudwatch-agent.msi
cfn-init.exe -v --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1 --configsets default
cfn-signal.exe -e %errorlevel% --stack arn:aws:cloudformation:us-east-1:123456789012:stack/MyStack/1c2fa620-982a-11e3-aff7-50e2416294e0 --resource EC2Instance --region us-east-1
</script>

EOF
  disable_api_stop= false
  ebs_optimized = false
  monitoring = false
  source_dest_check = false
}
