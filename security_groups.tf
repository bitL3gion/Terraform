resource "aws_security_group" "cobalt_sg" {
  name = "cobalt_sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.whitelist_cidr]
  }

  ingress {
    from_port   = 50050
    to_port     = 50050
    protocol    = "tcp"
    cidr_blocks = [var.whitelist_cidr]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}