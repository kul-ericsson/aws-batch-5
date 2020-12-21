resource "aws_db_instance" "thinknyx_db_server" {
  engine = "mysql"
  engine_version = "8.0.20"
  instance_class = "db.t2.micro"
  identifier = "thinknyx-${var.your_name}"
  storage_type = "gp2"
  allocated_storage = 10
  availability_zone = "us-east-2a"
  publicly_accessible = true
  db_subnet_group_name = aws_db_subnet_group.thinknyx_db_subnet_group.id
  vpc_security_group_ids = [ aws_security_group.thinknyx_security_group.id ]
  name = "thinknyx_${var.your_name}"
  username = "admin"
  password = "admin123"
  skip_final_snapshot = true
}