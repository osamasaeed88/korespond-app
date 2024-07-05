output "rds_instance_endpoint" {
  value = aws_db_instance.default.endpoint
}

output "rds_instance_id" {
  value = aws_db_instance.default.id
}
