variable "HostedZone" {
  type        = string
  default     = null
  description = "The DNS name of an existing Amazon Route 53 hosted zone"
}

variable "DNSName" {
  type    = string
  default = "goformation-stack123456789012.us-east-1."
}

variable "S3BucketForWebsiteContent" {

}