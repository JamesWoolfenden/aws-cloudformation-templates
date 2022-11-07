variable "CoreInstanceType" {
  type   = string
  default= "m3.xlarge"
  description= "Instance type to be used for core instances."
}
variable "MasterInstanceType" {
  type   = string
  default= "m3.xlarge"
  description= "Instance type to be used for the master instance."
}
variable "NumberOfCoreInstances" {
  type   = number
  default= 2
  description= "Must be a valid number"
}
variable "S3DataUri" {
  type   = string
  default= "s3://emrclusterdatabucket/"
  description= "Must be a valid S3 bucket URL "
}
variable "SubnetID" {
  type   = string
  default= "subnet-dba430ad"
  description= "Must be Valid public subnet ID"
}
variable "Applications" {
  type   = string
  default= null
  description= "Please select which application will be installed on the cluster this would be either Ganglia and spark, or Ganglia and s3 acked Hbase"
}
variable "EMRClusterName" {
  type   = string
  default= "emrcluster"
  description= "Name of the cluster"
}
variable "KeyName" {
  type   = string
  default= null
  description= "Must be an existing Keyname"
}
variable "LogUri" {
  type   = string
  default= "s3://emrclusterlogbucket/"
  description= "Must be a valid S3 URL"
}
variable "ReleaseLabel" {
  type   = string
  default= "emr-5.7.0"
  description= "Must be a valid EMR release  version"
}
