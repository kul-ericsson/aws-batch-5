resource "aws_nat_gateway" "thinknyx_nat_gateway" {
  allocation_id = aws_eip.eip_for_nat_gateway.id
  subnet_id = aws_subnet.thinknyx_subnet_1.id
  tags = {
    "Name" = "thinknyx_kul"
  }
}