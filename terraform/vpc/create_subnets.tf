resource "aws_subnet" "thinknyx_subnet_1" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.1.0/24"
  map_public_ip_on_launch = true
  availability_zone = "us-east-2a"
  tags = {
    "Name" = "thinknyx_subnet_1"
  }
}
resource "aws_subnet" "thinknyx_subnet_2" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.2.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-2b"
  tags = {
    "Name" = "thinknyx_subnet_2"
  }
}
resource "aws_subnet" "thinknyx_subnet_3" {
  vpc_id = aws_vpc.thinknyx_vpc.id
  cidr_block = "10.10.3.0/24"
  map_public_ip_on_launch = false
  availability_zone = "us-east-2c"
  tags = {
    "Name" = "thinknyx_subnet_3"
  }
}