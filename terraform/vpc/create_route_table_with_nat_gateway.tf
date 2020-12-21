resource "aws_route_table" "thinknyx_route_table_with_nat_gateway" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = "thinknyx_route_table_with_nat_gateway"
  }
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id  = aws_nat_gateway.thinknyx_nat_gateway.id
  }
}