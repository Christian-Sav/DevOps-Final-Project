resource "aws_instance" "qa_manager_node" {
  ami                         = var.ami_id
  instance_type               = var.instance
  associate_public_ip_address = var.enable_public_ip
  subnet_id                   = var.subnet_id
  vpc_security_group_ids      = var.vpc_security_group_ids

  tags = {
    Name = "manager-node"
    Task = "Project"
  }
}
