resource "aws_security_group" "web_sg" {
  name   = "web-sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web" {
  count = 2

  ami           = var.ami_id
  instance_type = var.instance_type

  subnet_id = var.public_subnet[count.index]
  associate_public_ip_address = true


  vpc_security_group_ids = [
    aws_security_group.web_sg.id
  ]

  tags = {
    Name = "web-${count.index + 1}"
  }
}
