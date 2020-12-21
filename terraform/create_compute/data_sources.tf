data "aws_ami" "thinknyx_ami" {
  most_recent = true
  owners = [ "554660509057" ]
  filter {
    name = "name"
    values = ["ericsson-batch-5-ubuntu-image"]
  }
}

data "aws_subnet" "thinknyx_public_subnet" {
  filter {
    name = "tag:Name"
    values = ["thinknyx_subnet_1"]
  }
}

data "aws_vpc" "thinknyx_vpc" {
  filter {
    name = "tag:Name"
    values = ["thinknyx_vpc"]
  }
}