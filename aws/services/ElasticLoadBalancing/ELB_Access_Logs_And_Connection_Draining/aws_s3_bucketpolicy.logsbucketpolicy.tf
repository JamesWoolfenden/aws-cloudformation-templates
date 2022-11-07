resource "aws_s3_bucket_policy" "LogsBucketPolicy" {
  bucket = ""
  policy = jsonencode({"Statement":[{"Action":["s3:PutObject"],"Effect":"Allow","Principal":{"AWS":"127311923021"},"Resource":"arn:aws:s3:::/Logs/AWSLogs/123456789012/*","Sid":"ELBAccessLogs20130930"}],"Version":"2008-10-17"})
}
