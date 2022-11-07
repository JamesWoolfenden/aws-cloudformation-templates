variable "HashKeyElementName" {
  type   = string
  default= null
  description= "HashType PrimaryKey Name"
}
variable "HashKeyElementType" {
  type   = string
  default= "S"
  description= "HashType PrimaryKey Type"
}
variable "ReadCapacityUnits" {
  type   = number
  default= 5
  description= "Provisioned read throughput"
}
variable "WriteCapacityUnits" {
  type   = number
  default= 10
  description= "Provisioned write throughput"
}
