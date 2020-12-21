resource "null_resource" "install_mysql_client_on_ec2_public_server" {
  provisioner "remote-exec" {
    connection {
      type = "ssh"
      user = "ubuntu"
      private_key = file("C:/training/ericsson/aws/kul-ericsson-thinknyx.pem")
      host = aws_instance.thinknyx_ec2_server.public_ip
    }
    inline = [
      "sudo apt-get -y update",
      "sudo apt-get install -y mysql-client"
    ]
  }
}