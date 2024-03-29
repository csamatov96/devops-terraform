resource "aws_security_group" "sg" {
  name        = "custom_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.custom_vpc.id

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22 #FROM A
    to_port     = 22 #TO B
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 80 #FROM A
    to_port     = 80 #TO B
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port       = 0
    to_port         = 0
    protocol        = "-1"
    cidr_blocks     = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow ssh and http"
  }
}