resource "aws_security_group" "thinknyx_security_group" {
  vpc_id = data.aws_vpc.thinknyx_vpc.id
  description = "This Security Group is controlled by Terraform Project"
  name = "thinknyx_security_group_${var.your_name}"
  tags = {
    "Name" = "thinknyx_security_group_${var.your_name}"
  }
  ingress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "SSH Port"
    from_port = 22
    to_port = 22
    protocol = "tcp"
  }
  ingress {
    cidr_blocks = [ var.your_ip ]
    description = "MYSQL Port"
    from_port = 3306
    to_port = 3306
    protocol = "tcp"
  }
  egress {
    cidr_blocks = [ "0.0.0.0/0" ]
    description = "All Outbound Traffic is Open"
    from_port = 0
    to_port = 0
    protocol = "-1"
  }
}