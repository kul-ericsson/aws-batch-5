resource "aws_instance" "thinknyx_ec2_server" {
  ami = data.aws_ami.thinknyx_ami.id
  instance_type = "t2.micro"
  key_name = "kul-ericsson-thinknyx"
  tags = {
    "Name" = "thinknyx_kul"
  }
  subnet_id = data.aws_subnet.thinknyx_public_subnet.id
  vpc_security_group_ids = [ aws_security_group.thinknyx_security_group.id ]
}