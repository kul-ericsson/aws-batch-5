provider "aws" {
  region = "us-east-2"
}

provider "mysql" {
  endpoint = output.database_server_enpoint
  username = output.database_server_username
  password = output.database_server_password
}