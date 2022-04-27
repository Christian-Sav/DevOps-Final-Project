resource "aws_vpc" "Proj-VPC" {
  cidr_block = var.vpc_cidr_block
  enable_dns_hostnames = true

  tags = {
    Name = "proj-vpc"
    Task = "Project"
  }
}
