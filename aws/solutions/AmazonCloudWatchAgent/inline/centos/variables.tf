variable "InstanceAMI" {
  type   = string
  default= "ami-28e07e50"
  description= "Managed AMI ID for EC2 Instance"
}
variable "InstanceType" {
  type   = string
  default= "m4.2xlarge"
  description= "EC2 instance type"
}
variable "KeyName" {
  type   = string
  default= null
  description= "Name of an existing EC2 KeyPair to enable SSH access to the instance"
}
variable "SSHLocation" {
  type   = string
  default= "0.0.0.0/0"
  description= "The IP address range that can be used to SSH to the EC2 instances"
}
variable "IAMRole" {
  type   = string
  default= "CloudWatchAgentAdminRole"
  description= "EC2 attached IAM role"
}
