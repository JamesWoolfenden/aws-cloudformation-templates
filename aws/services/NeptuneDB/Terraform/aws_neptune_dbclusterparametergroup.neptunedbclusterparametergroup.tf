resource "aws_neptune_cluster_parameter_group" "NeptuneDBClusterParameterGroup" {
  family      = var.family
  name        = "${var.Env}-${var.AppName}-neptune-cluster-parameter-group"
  description = "CloudFormation managed Neptune DB Cluster Parameter Group - ${var.Env}-${var.AppName}-cluster-parameter-group"
  parameter {
    name  = "neptune_enable_audit_log"
    value = var.neptune_enable_audit_log
  }
  tags = {
    "Name"       = "${var.Env}-${var.AppName}-cluster-parameter-group"
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
