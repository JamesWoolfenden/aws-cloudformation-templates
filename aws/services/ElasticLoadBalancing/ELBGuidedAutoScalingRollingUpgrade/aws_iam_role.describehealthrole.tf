resource "aws_iam_role" "DescribeHealthRole" {
  force_detach_policies=false
  inline_policy {}
  path="/"
  assume_role_policy = jsonencode({"Statement":[{"Action":["sts:AssumeRole"],"Effect":"Allow","Principal":{"Service":["ec2.amazonaws.com"]}}]})
}

resource "aws_iam_role_policy" "describe-instance-health-policyUWONBE" {
  name="describe-instance-health-policyUWONBE"
  role=aws_iam_role.DescribeHealthRole.id
  policy = jsonencode({"Statement":[{"Action":["elasticloadbalancing:DescribeInstanceHealth"],"Effect":"Allow","Resource":"*"}]})
}
