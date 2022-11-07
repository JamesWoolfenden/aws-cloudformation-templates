resource "aws_security_group" "NeptuneDBSG" {
  description = "SG of Neptune DB"
  name        = "NeptuneDBSG"
  vpc_id      = var.vpc_id
  tags = {
    "Name" = "${var.stack}-neptune-sg"
  }
}

