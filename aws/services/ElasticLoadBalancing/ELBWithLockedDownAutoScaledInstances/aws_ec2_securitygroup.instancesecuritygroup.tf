resource "aws_security_group" "InstanceSecurityGroup" {
  description = "Enable SSH access and HTTP access on the inbound port"
  name        = "InstanceSecurityGroup"
  ingress {
    cidr_blocks=[]
    from_port=80
    protocol="tcp"
    to_port=80
  }
  ingress {
    cidr_blocks=["0.0.0.0/0"]
    from_port=22
    protocol="tcp"
    to_port=22
  }
  vpc_id=""
}
