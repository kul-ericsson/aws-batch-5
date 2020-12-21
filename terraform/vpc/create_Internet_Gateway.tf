resource "aws_internet_gateway" "thinknyx_internet_gateway" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  tags = {
    "Name" = "thinknyx_internet_gateway"
  }
}