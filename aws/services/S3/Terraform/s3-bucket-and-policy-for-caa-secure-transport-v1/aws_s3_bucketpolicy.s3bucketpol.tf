resource "aws_s3_bucket_policy" "S3BUCKETPOL" {
  bucket = aws_s3_bucket.S3BUCKET.bucket
  policy = jsonencode({"Id":"CrossAccessPolicy","Statement":[{"Action":"s3:ListBucket","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::${var.PublisherAccountID}:root"},"Resource":"arn:aws:s3:::${var.BucketName}","Sid":"CrossAccPolicyDoc"},{"Action":"s3:GetObject","Effect":"Allow","Principal":{"AWS":"arn:aws:iam::${var.PublisherAccountID}:root"},"Resource":"arn:aws:s3:::${var.BucketName}/*","Sid":"CrossAccPolicyDoc"},{"Action":"*","Condition":{"Bool":{"aws:SecureTransport":"false"}},"Effect":"Deny","Principal":"*","Resource":"arn:aws:s3:::${var.BucketName}/*","Sid":"HttpsOnly"}],"Version":"2012-10-17"})
}
