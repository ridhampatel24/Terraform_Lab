provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "intro" {
  ami                    = "ami-0c101f26f147fa7fd"
  instance_type          = "t2.micro"
  availability_zone      = "us-east-1a"
  key_name               = "dove-key"
  vpc_security_group_ids = ["sg-044a31cfb8b9f2044"]
  tags = {
    Name    = "Dove-Instance"
    Project = "Dove"
  }

}
