output "private_subnet_id" {
  description = "ID of the created private subnet"
  value       = aws_subnet.private_subnet.id
}

output "lambda_function_name" {
  description = "Name of the created Lambda function"
  value       = aws_lambda_function.my_lambda.function_name
}

output "security_group_id" {
  description = "ID of the created Security Group"
  value       = aws_security_group.lambda_sg.id
}

output "vpc_id" {
  description = "VPC ID where resources are deployed"
  value       = aws_vpc.main.id
}

output "route_table_id" {
  description = "ID of the created Route Table"
  value       = aws_route_table.private_route_table.id
}
