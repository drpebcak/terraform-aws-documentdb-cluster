resource "aws_docdb_subnet_group" "docdb" {
  name_prefix = var.name
  subnet_ids  = var.group_subnets
}

resource "aws_docdb_cluster" "api_docdb" {
  cluster_identifier_prefix       = var.name
  db_subnet_group_name            = aws_docdb_subnet_group.docdb.name
  db_cluster_parameter_group_name = aws_docdb_cluster_parameter_group.api_docdb.name
  vpc_security_group_ids          = var.cluster_security_group
  engine                          = "docdb"
  master_username                 = var.master_username
  master_password                 = var.master_password
  storage_encrypted               = var.storage_encrypted
  apply_immediately               = var.apply_immediately

  backup_retention_period = var.backup_retention_period
  preferred_backup_window = var.preferred_backup_window
  skip_final_snapshot     = var.skip_final_snapshot
}

resource "aws_docdb_cluster_instance" "cluster_instances" {
  count              = var.cluster_instance_count
  identifier         = "${var.name}-${count.index}"
  cluster_identifier = aws_docdb_cluster.api_docdb.id
  instance_class     = var.cluster_instance_class
  ca_cert_identifier = var.ca_cert_identifier
}

resource "aws_docdb_cluster_parameter_group" "api_docdb" {
  family      = "docdb3.6"
  name_prefix = var.name
  description = "${var.name} docdb cluster parameter group"
  dynamic "parameter" {
    for_each = var.parameters
    content {
      name  = parameter.value.name
      value = parameter.value.value
    }
  }
}
