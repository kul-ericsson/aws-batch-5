resource "null_resource" "run_demo_sql_script_on_newly_created_database" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.thinknyx_ec2_server.public_ip
    }
    inline = [
      "mysql -h ${aws_db_instance.thinknyx_db_server.address} -u ${aws_db_instance.thinknyx_db_server.username} -padmin123 -D ${mysql_database.thinknyx_database.name} </tmp/demo_sql_script.sql"
    ]
  }
}