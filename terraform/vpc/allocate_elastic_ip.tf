resource "aws_eip" "eip_for_nat_gateway" {
  tags = {
    "Name" = "thinknyx_nat_gateway_eip"
  }
}