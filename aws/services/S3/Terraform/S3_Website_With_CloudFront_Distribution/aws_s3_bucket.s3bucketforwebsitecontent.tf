resource "aws_s3_bucket" "S3BucketForWebsiteContent" {
  bucket = var.S3BucketForWebsiteContent
}

resource "aws_s3_bucket_acl" "S3BucketForWebsiteContent" {
  bucket = aws_s3_bucket.S3BucketForWebsiteContent.id
  acl    = "public-read"
}

