variable "PublisherAccountID" {
  type   = string
  default= null
  description= "The AWS account ID with whom you are sharing access"
}
variable "BucketName" {
  type   = string
  default= null
  description= "The name of the S3 Bucket to create, make this unique"
}
