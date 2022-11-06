variable "DBUser" {
  type   = string
  default= null
  description= "The database admin account username"
}
variable "EC2SecurityGroup" {
  type   = string
  default= "default"
  description= "The EC2 security group that contains instances that need access to the database"
}
variable "MultiAZ" {
  type   = bool
  default= false
  description= "Multi-AZ master database"
}
variable "DBAllocatedStorage" {
  type   = number
  default= 5
  description= "The size of the database (Gb)"
}
variable "DBInstanceClass" {
  type   = string
  default= "db.t2.small"
  description= "The database instance type"
}
variable "DBName" {
  type   = string
  default= "MyDatabase"
  description= "The database name"
}
variable "DBPassword" {
  type   = string
  default= null
  description= "The database admin account password"
}
variable "vpc_id" {
  type = string
  default = "vpc-06074a092930bc809"
}