resource "aws_ebs_volume" "thinknyx_volume" {
  availability_zone = var.availability_zone
  size = 10
  tags = {
    "Name" = "thinknyx_${var.your_name}"
  }
}

resource "aws_volume_attachment" "thinknyx_volume_attachment" {
  volume_id = aws_ebs_volume.thinknyx_volume.id
  instance_id = aws_instance.thinknyx_ec2_server_2.id
  device_name = "/dev/sdb"
  skip_destroy = "true"
}