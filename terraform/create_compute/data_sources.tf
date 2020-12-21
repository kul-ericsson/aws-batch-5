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

data "aws_subnet" "thinknyx_private_subnet" {
  availability_zone = var.availability_zone
  vpc_id = data.aws_vpc.thinknyx_vpc.id
}

data "aws_subnet" "thinknyx_private_subnet_2" {
  availability_zone = "us-east-2c"
  vpc_id = data.aws_vpc.thinknyx_vpc.id
}

/*data "aws_subnet_ids" "thinknyx_vpc_subnet_ids" {
  vpc_id = data.aws_vpc.thinknyx_vpc.id
}*/

data "aws_vpc" "thinknyx_vpc" {
  filter {
    name = "tag:Name"
    values = ["thinknyx_vpc"]
  }
}