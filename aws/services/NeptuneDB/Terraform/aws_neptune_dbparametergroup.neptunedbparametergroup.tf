resource "aws_neptune_parameter_group" "NeptuneDBParameterGroup" {
  family      = var.family
  name        = "${var.Env}-${var.AppName}-parameter-group"
  description = "CloudFormation managed Neptune DB Parameter Group - ${var.Env}-${var.AppName}-parameter-group"
  parameter {
    name  = "neptune_query_timeout"
    value = var.NeptuneQueryTimeout
  }
  tags = {
    "Name"       = "${var.Env}-${var.AppName}-parameter-group"
    "App"        = var.AppName
    "Compliance" = var.Compliance
    "Env"        = var.Env
    "User"       = var.User
    "Owner"      = var.Owner
    "Tier"       = var.Tier
    "Version"    = var.Version
    "Storage"    = var.Storage
  }
}


variable "family" {
  type=string
  default="neptune1.2"
  description = "Neptune family"
}