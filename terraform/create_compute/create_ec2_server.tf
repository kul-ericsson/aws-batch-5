resource "aws_instance" "thinknyx_ec2_server" {
  ami = data.aws_ami.thinknyx_ami.id
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  tags = {
    "Name" = "thinknyx_kul"
  }
}