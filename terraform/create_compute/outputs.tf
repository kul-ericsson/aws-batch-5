output "public_ip_of_server_in_public_subnet" {
  value = aws_instance.thinknyx_ec2_server.public_ip
}

output "private_ip_of_server_in_private_subnet" {
  value = aws_instance.thinknyx_ec2_server_2.private_ip
}

output "database_server_address" {
  value = aws_db_instance.thinknyx_db_server.address
}

output "database_server_endpoint" {
  value = aws_db_instance.thinknyx_db_server.endpoint
}

output "database_server_username" {
  value = aws_db_instance.thinknyx_db_server.username
}

output "database_server_password" {
  value = aws_db_instance.thinknyx_db_server.password
}