resource "aws_instance" "cobalt_strike" {
  ami                    = var.ami_kali
  instance_type          = "t2.micro"
  key_name               = "AWS_Admin"
  subnet_id              = "subnet-d3f09589"
  vpc_security_group_ids = [aws_security_group.cobalt_sg.id]

  tags = {
    Name = "Cobalt Strike"
  }
}

resource "aws_instance" "redirector" {
  ami                    = var.ami_ubuntu
  instance_type          = "t2.micro"
  key_name               = "AWS_Admin"
  subnet_id              = "subnet-d3f09589"
  vpc_security_group_ids = [aws_security_group.cobalt_sg.id]

  tags = {
    Name = "Redirector"
  }
}
