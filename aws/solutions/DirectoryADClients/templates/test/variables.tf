variable "PrivateSubnet1ID" {
  type   = string
  default= null
  description= "ID of the private subnet 1 in Availability Zone 1 (e.g., subnet-a0246dcd)"
}
variable "AMAZONLINUX2" {
  type   = string
  default= "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-ebs"
  description= ""
}
variable "DirectoryName" {
  type   = string
  default= "sato"
  description= "Fully qualified name of the on-premises directory, such as corp.example.com"
}
variable "DomainDNSServer2" {
  type   = string
  default= null
  description= "(Optional) Domain DNS Server 2. If DNS servers are not set, then you need to ensure the DNS servers the EC2 instances are using can resolve the AD domain."
}
variable "DomainDNSServer3" {
  type   = string
  default= null
  description= "(Optional) Domain DNS Server 3. If DNS servers are not set, then you need to ensure the DNS servers the EC2 instances are using can resolve the AD domain."
}
variable "DomainDNSServer4" {
  type   = string
  default= null
  description= "(Optional) Domain DNS Server 4. If DNS servers are not set, then you need to ensure the DNS servers the EC2 instances are using can resolve the AD domain."
}
variable "DomainMember4NetBIOSName" {
  type   = string
  default= "SERVER4"
  description= "NetBIOS name of Domain Member 4 (AmazonLinux2)"
}
variable "DomainMembersSGID" {
  type   = string
  default= "soemthing"
  description= "Security Group ID for Domain Members Security Group"
}
variable "PrivateSubnet2ID" {
  type   = string
  default= null
  description= "ID of the private subnet 2 in Availability Zone 2 (e.g., subnet-a0246dcd)"
}
variable "DirectoryID" {
  type   = string
  default= null
  description= "Directory ID"
}
variable "DomainDNSServer1" {
  type   = string
  default= null
  description= "(Optional) Domain DNS Server 1. If DNS servers are not set, then you need to ensure the DNS servers the EC2 instances are using can resolve the AD domain."
}
variable "EBSKMSKey" {
  type   = string
  default= null
  description= "(Optional) KMS Alias, Key ID, Key ID ARN or Alias ARN to use for encrypting the EBS volumes. If empty, the default key for EBS encryption will be used of `alias/aws/ebs` or the CMK set as the default EBS encryption key."
}
variable "WINFULLBASE" {
  type   = string
  default= "/aws/service/ami-windows-latest/Windows_Server-2019-English-Full-Base"
  description= ""
}
variable "DomainMember3NetBIOSName" {
  type   = string
  default= "SERVER3"
  description= "NetBIOS name of Domain Member 3 (using SSM association via tag). Note, if computer name existed in AD before, delete from AD first."
}
variable "DomainMembersInstanceType" {
  type   = string
  default= "t3.medium"
  description= "Amazon EC2 instance type for the AD Server instances"
}
variable "DomainMembersLinuxInstanceProfile" {
  type   = string
  default= null
  description= "Existing IAM InstanceProfile with Linux EC2 seamless join domain rights"
}
variable "KeyPairName" {
  type   = string
  default= null
  description= "KeyPair for ONPREMISES INSTANCES"
}
variable "SSMLogsBucketName" {
  type   = string
  default= null
  description= "(Optional) SSM Logs bucket name for where Systems Manager logs should store log files. SSM Logs bucket name can include numbers, lowercase letters, uppercase letters, and hyphens (-). It cannot start or end with a hyphen (-)."
}
variable "DomainMember1NetBIOSName" {
  type   = string
  default= "SERVER1"
  description= "NetBIOS name of Domain Member 1 (using inline SSM association). Note, if computer name existed in AD before, delete from AD first."
}
variable "DomainMember2NetBIOSName" {
  type   = string
  default= "SERVER2"
  description= "NetBIOS name of Domain Member 2 (using SSM association via instance id). Note, if computer name existed in AD before, delete from AD first."
}
variable "DomainMembersWindowsInstanceProfile" {
  type   = string
  default= null
  description= "Existing IAM InstanceProfile with Windows EC2 seamless join domain rights"
}
