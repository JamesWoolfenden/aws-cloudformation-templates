resource "aws_ssm_association" "JoinDomainAssociationTags" {
  name = "AWS-JoinDirectoryServiceDomain"
  apply_only_at_cron_interval=false
  association_name="JoinDomain-Association-viaTags-goformation-stack"
  parameters = {
   directoryId=var.DirectoryID,
   directoryName="",
   dnsIpAddresses="",
   }
  targets {
    key    ="tag:DomainJoin"
    values = [var.DirectoryName]
  }
}
