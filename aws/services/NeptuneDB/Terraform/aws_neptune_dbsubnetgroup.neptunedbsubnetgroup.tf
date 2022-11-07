resource "aws_neptune_subnet_group" "NeptuneDBSubnetGroup" {
  name        = "neptunedb"
  description = "CloudFormation managed Neptune DB Subnet Group - ${var.Env}-${var.AppName}-subnet-group"
  subnet_ids  = var.subnet_ids
  tags = {
    "Name"       = "${var.Env}-${var.AppName}-subnet-group"
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

