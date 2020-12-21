resource "aws_route_table_association" "thinknyx_subnet_association_for_nat_gateway" {
  subnet_id = aws_subnet.thinknyx_subnet_2.id
  route_table_id = aws_route_table.thinknyx_route_table_with_nat_gateway.id
}