resource "null_resource" "copy_file_to_server_from_local" {
  provisioner "file" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.thinknyx_ec2_server.public_ip
    }
    source = "demo_sql_script.sql"
    destination = "/tmp/demo_sql_script.sql"
  }
}