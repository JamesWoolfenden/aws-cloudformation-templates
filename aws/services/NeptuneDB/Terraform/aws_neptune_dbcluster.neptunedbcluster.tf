resource "aws_neptune_cluster" "NeptuneDBCluster" {
  apply_immediately                    = true
  backup_retention_period              = var.BackupRetentionPeriod
  cluster_identifier                   = var.DBClusterIdentifier
  deletion_protection                  = false
  enable_cloudwatch_logs_exports       = ["audit"]
  engine                               = "neptune"
  engine_version                       = "1.2.0.1"
  iam_database_authentication_enabled  = var.IAMAuthEnabled
  iam_roles                            = [aws_iam_role.NeptuneRole.arn]
  kms_key_arn                          = ""
  neptune_cluster_parameter_group_name = aws_neptune_cluster_parameter_group.NeptuneDBClusterParameterGroup.name
  neptune_subnet_group_name            = aws_neptune_subnet_group.NeptuneDBSubnetGroup.name
  port                                 = var.Port
  preferred_backup_window              = var.NeptuneDBClusterPreferredBackupWindow
  preferred_maintenance_window         = var.NeptuneDBClusterPreferredMaintenanceWindow
  skip_final_snapshot                  = true
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
