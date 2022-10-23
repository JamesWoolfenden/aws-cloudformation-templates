resource "aws_instance" "DomainMember1WithInlineSsmAssociation" {
  iam_instance_profile=var.DomainMembersWindowsInstanceProfile
  ami=var.WINFULLBASE
  instance_type=var.DomainMembersInstanceType
  user_data=<<-EOF
<powershell>
$instanceId = "null"
while ($instanceId -NotLike "i-*") {
Start-Sleep -s 3
$instanceId = Invoke-RestMethod -uri http://169.254.169.254/latest/meta-data/instance-id
}
Rename-Computer -NewName SERVER1 -Force
# Set-TimeZone -Name "US Eastern Standard Time"

Install-WindowsFeature -IncludeAllSubFeature RSAT
Restart-Computer -Force
</powershell>

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
  subnet_id=var.PrivateSubnet1ID
  tags = {
  	"Name"=var.DomainMember1NetBIOSName

    }
}
