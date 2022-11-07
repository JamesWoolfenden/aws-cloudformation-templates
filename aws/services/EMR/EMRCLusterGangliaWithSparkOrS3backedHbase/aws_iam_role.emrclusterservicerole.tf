resource "aws_iam_role" "EMRClusterServiceRole" {
  force_detach_policies=false
  inline_policy {}
  managed_policy_arns=[
	"arn:aws:iam::aws:policy/service-role/AmazonElasticMapReduceRole"
	]

  path="/"
  assume_role_policy = jsonencode({"Statement":[{"Action":["sts:AssumeRole"],"Effect":"Allow","Principal":{"Service":["elasticmapreduce.amazonaws.com"]}}],"Version":"2012-10-17"})
}
