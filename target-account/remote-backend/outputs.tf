output "state_bucket_name" {
  description = "Name of state bucket"
  value       = aws_s3_bucket.this.id
}

output "state_lock_name" {
  description = "Name of state lock table"
  value       = aws_dynamodb_table.this.id
}