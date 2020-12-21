resource "aws_ebs_volume" "thinknyx_volume" {
  availability_zone = var.availability_zone
  size = 10
  tags = {
    "Name" = "thinknyx_${var.your_name}"
  }
}