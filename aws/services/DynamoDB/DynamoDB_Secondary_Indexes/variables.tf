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
