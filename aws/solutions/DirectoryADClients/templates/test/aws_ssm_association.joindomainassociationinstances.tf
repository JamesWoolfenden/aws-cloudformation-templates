resource "aws_ssm_association" "JoinDomainAssociationInstances" {
  name = "AWS-JoinDirectoryServiceDomain"
  apply_only_at_cron_interval=false
  association_name="JoinDomain-Association-viaInstances-goformation-stack"
  parameters = {
   directoryId=var.DirectoryID,
   directoryName="",
   dnsIpAddresses="",
   }
  targets {
    key    ="InstanceIds"
    values = [aws_instance.DomainMember2WithSsmAssociationInstance.id,aws_instance.DomainMember4LinuxWithSsmAssociationInstance.id]
  }
}
