resource "aws_neptune_cluster_instance" "NeptuneDBInstance" {
  auto_minor_version_upgrade   = true
  availability_zone            = ""
  neptune_parameter_group_name = aws_neptune_parameter_group.NeptuneDBParameterGroup.name
  neptune_subnet_group_name    = aws_neptune_subnet_group.NeptuneDBSubnetGroup.name
  preferred_maintenance_window = var.NeptuneDBInstancePreferredMaintenanceWindow
  cluster_identifier           = aws_neptune_cluster.NeptuneDBCluster.cluster_identifier
  engine                       = "neptune"
  instance_class               = var.DBInstanceClass

  tags = {
    "Name"       = "${var.Env}-${var.AppName}-Instance"
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

