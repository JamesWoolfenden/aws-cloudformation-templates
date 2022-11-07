resource "aws_iam_role" "EMRClusterinstanceProfileRole" {
  force_detach_policies=false
  inline_policy {}
  managed_policy_arns=[
	"arn:aws:iam::aws:policy/service-role/AmazonElasticMapReduceforEC2Role"
	]

  path="/"
  assume_role_policy = jsonencode({"Statement":[{"Action":["sts:AssumeRole"],"Effect":"Allow","Principal":{"Service":["ec2.amazonaws.com"]}}],"Version":"2012-10-17"})
}
