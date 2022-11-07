variable "VPC" {
  type   = string
  default= null
  description= ""
}
variable "ELBIpAddressType" {
  type   = string
  default= "ipv4"
  description= ""
}
variable "ELBType" {
  type   = string
  default= "network"
  description= ""
}
variable "Subnet1" {
  type   = list(string)
  default= null
  description= "ID of the Subnet the instance should be launched in, this will link the instance to the same VPC."
}
variable "Subnet2" {
  type   = list(string)
  default= null
  description= "ID of the Subnet the instance should be launched in, this will link the instance to the same VPC."
}
