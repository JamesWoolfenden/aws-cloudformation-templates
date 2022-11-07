variable "SSHLocation" {
  type   = string
  default= "0.0.0.0/0"
  description= "The IP address range that can be used to SSH to the EC2 instances"
}
variable "InstanceType" {
  type   = string
  default= "t2.small"
  description= "WebServer EC2 instance type"
}
variable "KeyName" {
  type   = string
  default= null
  description= "Name of an existing EC2 KeyPair to enable SSH access to the instances"
}
