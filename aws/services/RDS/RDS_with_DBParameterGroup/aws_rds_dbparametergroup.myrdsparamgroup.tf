resource "aws_db_parameter_group" "MyRDSParamGroup" {
  name   = "myrdsparamgroup"
  family =  "MySQL5.6"
  parameter {
    name  = "autocommit"
    value = "1"
  }
  parameter {
    name  = "general_log"
    value = "1"
  }
  parameter {
    name  = "old_passwords"
    value = "0"
  }
}
