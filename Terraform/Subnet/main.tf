data "aws_availability_zones" "available" {
    state = "available"
}

resource "aws_subnet" "Proj-SNs" {
  count = 2
  vpc_id     = aws_vpc.Proj-VPC.id
  subnet_cidr_block = cidrsubnet(var.vpc_cidr_block, 8, count.index)
  availability_zone = data.aws_availability_zones.available.names[count.index]
  map_public_ip_on_launch = true

  tags = {
    Name = "proj-sn"
    Task = "Project"  
   "kubernetes.io/cluster/qa_cluster" = "shared"
  }
}