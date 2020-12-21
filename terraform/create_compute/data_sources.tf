data "aws_ami" "thinknyx_ami" {
  most_recent = true
  owners = [ "554660509057" ]
  filter {
    name = "name"
    values = ["ericsson-batch-5-ubuntu-image"]
  }
}