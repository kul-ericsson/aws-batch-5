provider "aws" {
  region = "us-east-2"
}

provider "mysql" {
  endpoint = aws_db_instance.thinknyx_db_server.endpoint
  username = aws_db_instance.thinknyx_db_server.username
  password = aws_db_instance.thinknyx_db_server.password
}