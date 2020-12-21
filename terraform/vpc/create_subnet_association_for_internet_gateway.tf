resource "aws_route_table_association" "thinknyx_subnet_association_for_internet_gateway" {
  subnet_id = aws_subnet.thinknyx_subnet_1.id
  route_table_id = aws_route_table.thinknyx_route_table_with_internet_gateway.id
}