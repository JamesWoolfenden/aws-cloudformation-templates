variable "UploadAuditLogs" {
  type        = bool
  default     = true
  description = "Enable upload of audit logs?"
}

variable "BackupRetentionPeriod" {
  type        = number
  default     = 31
  description = "Backup retention period (in days).  Must be between 1 - 35"
}

variable "Env" {
  type        = string
  default     = "dev"
  description = "Please specify the target Environment. Used for tagging and resource names. Mandatory LOWER CASE."
}

variable "HighCpuAlarmThreshold" {
  type        = number
  default     = 80
  description = "High CPU alarm threshold. Alert when CPU goes above this value.  In percentage used"
}

variable "SNSEmailSubscription" {
  type        = string
  default     = ""
  description = "SNS Email subscription. Optional. If not provided, no alarm subscriptions will be created"
}

variable "Storage" {
  type        = string
  default     = "ebs"
  description = "Please specify the Storage Type. Used for tagging"
}

variable "AppName" {
  type        = string
  default     = "appname"
  description = "Please specify the Application Name. Used for tagging and resource names. Mandatory LOWER CASE."
}

variable "Compliance" {
  type        = string
  default     = "pci"
  description = "Please specify the Compliance Type. Used for tagging"
}

variable "NeptuneEnableAuditLog" {
  type        = number
  default     = 0
  description = "Neptune DB parameters. Allowed values 0, 1"
}

variable "SparqlRequestsPerSecThreshold" {
  type        = number
  default     = 10000
  description = "Sparql Requests Per Sec alarm threshold. Alert when Sparql Requests Per Sec goes above this value. In percentage used"
}

variable "DBClusterIdentifier" {
  type        = string
  default     = "sato"
  description = "Neptune DB cluster identifier. Must contain from 1 to 63 alphanumeric characters or hyphens. First character must be a letter. Cannot end with a hyphen or contain two consecutive hyphens."
}

variable "NeptuneDBClusterPreferredBackupWindow" {
  type        = string
  default     = "02:00-03:00"
  description = "Neptune DB cluster preferred backup window. Constrains - Must be in the format hh24:mi-hh24:mi. Must be in Universal Coordinated Time (UTC). Must not conflict with the preferred maintenance window. Must be at least 30 minutes."
}

variable "NeptuneDBInstancePreferredMaintenanceWindow" {
  type        = string
  default     = "mon:03:00-mon:04:00"
  description = "Neptune DB instance preferred maintenance window. Format - ddd:hh24:mi-ddd:hh24:mi. Valid Days - Mon, Tue, Wed, Thu, Fri, Sat, Sun. Constraints - Minimum 30-minute window."
}

variable "Version" {
  type        = string
  default     = "1"
  description = "Please specify the Application Version. Used for tagging"
}

variable "StorageEncrypted" {
  type        = bool
  default     = true
  description = "Data-at-rest encryption"
}

variable "GremlinRequestsPerSecThreshold" {
  type        = number
  default     = 10000
  description = "Gremlin Requests Per Sec alarm threshold. Alert when Gremlin Requests Per Sec goes above this value. In percentage used"
}

variable "User" {
  type        = string
  default     = "test"
  description = "Please specify the User. Used for tagging"
}

variable "NeptuneDBClusterPreferredMaintenanceWindow" {
  type        = string
  default     = "mon:03:00-mon:04:00"
  description = "Neptune DB cluster preferred maintenance window. Format - ddd:hh24:mi-ddd:hh24:mi. Valid Days - Mon, Tue, Wed, Thu, Fri, Sat, Sun. Constraints - Minimum 30-minute window."
}

variable "NeptuneDBSubnetGroupName" {
  type        = string
  default     = "sato-neptune"
  description = "The name for the DB Subnet Group. This value is stored as a lowercase string. Constraints, Must contain no more than 255 letters, numbers, periods, underscores, spaces, or hyphens. Must not be default."
}

variable "Tier" {
  type        = string
  default     = ""
  description = "Please specify the Tier. Used for tagging"
}

variable "IAMAuthEnabled" {
  type        = bool
  default     = false
  description = "Neptune DB IAM authentication"
}
variable "MajorVersionUpgrade" {
  type        = bool
  default     = true
  description = "Neptune DB major version upgrade"
}
variable "MinorVersionUpgrade" {
  type        = bool
  default     = true
  description = "Neptune DB minor version upgrade"
}
variable "VPCStack" {
  type        = string
  default     = "vpc"
  description = "Please specify the VPC Stack Name."
}
variable "DBInstanceClass" {
  type        = string
  default     = "db.r4.large"
  description = "Neptune DB instance class that will be used for primary and all replicas"
}

variable "LowMemoryAlarmThreshold" {
  type        = number
  default     = 0.00000007
  description = "Low memory alarm threshold. Alert when memory falls below this value.  In bytes"
}

variable "NeptuneQueryTimeout" {
  type        = number
  default     = 120000
  description = "Neptune DB parameters. Allowed values 10-2147483647"
}

variable "Owner" {
  type        = string
  default     = ""
  description = "Please specify the Owner. Used for tagging"
}

variable "Port" {
  type        = number
  default     = 8182
  description = "Port used to connect to the Neptune cluster. Must be a valid port number between"
}

variable "neptune_enable_audit_log" {
  type    = number
  default = 0
}

variable "Region" {
  type=string
  default="eu-west-2"
}

variable "subnet_ids" {
  type=list(string)
  default = ["subnet-05a6a6de2f4989d22","subnet-03fdfb13a135366a7"]
  description = "Should Private subnets"
}

variable "vpc_id" {
  type=string
  default = "vpc-0c33dc8cd64f408c4"
}

variable "stack" {
  type    = string
  default = "goformation-stack"
}