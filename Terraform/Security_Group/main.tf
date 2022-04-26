resource "aws_security_group" "Proj-SG" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id = var.vpc_id

  dynamic "ingress" {
    iterator = port
    for_each = var.ingress_ports
    content {
      from_port   = port.value
      protocol    = "tcp"
      to_port     = port.value
      cidr_blocks = [var.ip_addresses]
    }
  }

  egress {
    from_port   = var.egress_port
    protocol    = "-1"
    to_port     = var.egress_port
    cidr_blocks = [var.ip_addresses]
  }

  tags = {
    Name = "allow_ssh"
    Task = "Project"
  }
}