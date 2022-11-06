resource "aws_security_group" "DBEC2SecurityGroup" {
  description = "Open database for access"
  name        = "DBEC2SecurityGroup"
  ingress {
    cidr_blocks=[]
    from_port=3306
    protocol="tcp"
    to_port=3306
    security_groups = [var.EC2SecurityGroup]
  }
  vpc_id=var.vpc_id
}
