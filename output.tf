output "arn" {
  value = aws_docdb_cluster.api_docdb.arn
}

output "cluster_members" {
  value = aws_docdb_cluster.api_docdb.cluster_members
}

output "cluster_resource_id" {
  value = aws_docdb_cluster.api_docdb.cluster_resource_id
}

output "endpoint" {
  value = aws_docdb_cluster.api_docdb.endpoint
}

output "hosted_zone_id" {
  value = aws_docdb_cluster.api_docdb.hosted_zone_id
}

output "id" {
  value = aws_docdb_cluster.api_docdb.id
}

output "reader_endpoint" {
  value = aws_docdb_cluster.api_docdb.reader_endpoint
}
