resource "aws_instance" "manager-node" {
  ami                         = var.ami-id
  instance_type               = var.instance-type
  subnet_id                   = aws_subnet.Proj-SN.id
  key_name                    = var.pem-key
  associate_public_ip_address = true
  security_groups             = [aws_security_group.allow-ssh.name]

  tags = {
    Name = "manager-node"
    Task = "Project"
  }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.Proj-VPC.id

  ingress {
    description      = "ssh from VPC"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
    Task = "Project"
  }
}