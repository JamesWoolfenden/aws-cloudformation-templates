resource "aws_neptune_cluster" "NeptuneDBCluster" {
  cluster_identifier                   = var.DBClusterIdentifier
  engine                               = "neptune"
  backup_retention_period              = var.BackupRetentionPeriod
  preferred_backup_window              = var.NeptuneDBClusterPreferredBackupWindow
  iam_database_authentication_enabled  = var.IAMAuthEnabled
  iam_roles                            = [aws_iam_role.NeptuneRole.arn]
  availability_zones                   = []
  neptune_cluster_parameter_group_name = aws_neptune_cluster_parameter_group.NeptuneDBClusterParameterGroup.name
  neptune_subnet_group_name            = aws_neptune_subnet_group.NeptuneDBSubnetGroup.name
  deletion_protection                  = false
  enable_cloudwatch_logs_exports       = ["audit"]
  kms_key_arn                          = ""
  port                                 = var.Port
  preferred_maintenance_window         = var.NeptuneDBClusterPreferredMaintenanceWindow
  snapshot_identifier                  = ""
  storage_encrypted                    = var.StorageEncrypted
  vpc_security_group_ids               = [aws_security_group.NeptuneDBSG.id]

  tags = {
    "Name"       = "${var.Env}-${var.AppName}-Cluster"
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
