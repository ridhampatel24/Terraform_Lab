resource "aws_instance" "dove-inst" {
  ami                    = var.AMIS[var.REGION]
  instance_type          = "t2.micro"
  availability_zone      = var.ZONE1
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-044a31cfb8b9f2044"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }
}
