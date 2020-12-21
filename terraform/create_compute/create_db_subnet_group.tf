resource "aws_db_subnet_group" "thinknyx_db_subnet_group" {
  name = "thinknyx_${var.your_name}"
  subnet_ids = [ data.aws_subnet.thinknyx_public_subnet.id, data.aws_subnet.thinknyx_private_subnet.id, data.aws_subnet.thinknyx_private_subnet_2.id ]
}