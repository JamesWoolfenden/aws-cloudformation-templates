resource "aws_db_instance" "ReplicaDB" {
  allow_major_version_upgrade= false
  auto_minor_version_upgrade= false
  db_name              = var.DBName
  engine               = ""
  engine_version       = ""
  instance_class       = var.DBInstanceClass
  username             = var.DBUser
  password             = var.DBPassword
  copy_tags_to_snapshot=false
  delete_automated_backups= false
  deletion_protection= false
  enabled_cloudwatch_logs_exports=[]
  iam_database_authentication_enabled= false
  performance_insights_enabled= false
  multi_az= false
  publicly_accessible= false
  storage_encrypted = false
  vpc_security_group_ids=[]
  tags = {
    	"Name"="Read Replica Database"

  }
}
