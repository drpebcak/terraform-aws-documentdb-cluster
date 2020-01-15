variable "group_subnets" {
  type    = list(string)
  default = []
}

variable "cluster_security_group" {
  type = list(string)
}

variable "master_password" {
  type = string
}

variable "master_username" {
  type = string
}

variable "cluster_instance_class" {
  type    = string
  default = "db.r5.large"
}

variable "cluster_instance_count" {
  type    = number
  default = 1
}

variable "name" {
  type = string
}

variable "backup_retention_period" {
  default = 7
  type    = number
}

variable "preferred_backup_window" {
  default = "07:00-09:00"
  type    = string
}

variable "skip_final_snapshot" {
  default = false
  type    = bool
}

variable "storage_encrypted" {
  default = true
  type    = bool
}

variable "parameters" {
  description = "additional parameters modified in parameter group"
  type        = list(map(any))
  default     = []
}

variable "apply_immediately" {
  default     = false
  description = "Specifies whether any cluster modifications are applied immediately, or during the next maintenance window."
  type        = bool
}

variable "ca_cert_identifier" {
  default     = "rds-ca-2019"
  description = "Optional, identifier of the CA certificate to use for DB instance"
  type        = string
}
