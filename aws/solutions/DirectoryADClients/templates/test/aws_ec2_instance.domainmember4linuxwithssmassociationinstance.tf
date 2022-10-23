resource "aws_instance" "DomainMember4LinuxWithSsmAssociationInstance" {
  iam_instance_profile=var.DomainMembersLinuxInstanceProfile
  ami=var.AMAZONLINUX2
  instance_type=var.DomainMembersInstanceType
  user_data=<<-EOF
# Set HostName
LowerEc2Name=$(echo SERVER4 | tr '[:upper:]' '[:lower:]')
hostnamectl set-hostname $LowerEc2Name
# Set TimeZone
# sed -i 's|^ZONE=.*|ZONE="America/New_York"|' /etc/sysconfig/clock
# ln -sf /usr/share/zoneinfo/America/New_York /etc/localtime
# Patch System Up
yum update -y
# Reboot
reboot

EOF

  ebs_block_device {
    delete_on_termination=true
    device_name="/dev/sda1"
    encrypted=true
    volume_size=100
    volume_type="gp3"
  }
  disable_api_stop= false
  ebs_optimized = false
  key_name=var.KeyPairName
  monitoring = false
  security_groups=[var.DomainMembersSGID]
  source_dest_check = false
  subnet_id=var.PrivateSubnet2ID
  tags = {
  	"Name"=var.DomainMember4NetBIOSName

    }
}
