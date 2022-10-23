resource "aws_security_group" "InstanceSecurityGroup" {
  description="Enable SSH access via port 22"
  name= "InstanceSecurityGroup"
  ingress {
    cidr_blocks=["0.0.0.0/0"]
    from_port=22
    protocol="tcp"
    to_port=22
  }
  vpc_id=""
}
