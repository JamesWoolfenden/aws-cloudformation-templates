variable "DBPassword" {
  type   = string
  default= null
  description= "The database admin account password"
}
variable "DBUser" {
  type   = string
  default= null
  description= "The database admin account username"
}
variable "DBName" {
  type   = string
  default= "MyDatabase"
  description= "The database name"
}
