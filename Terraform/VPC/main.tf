resource "aws_vpc" "Proj-VPC" {
  cidr_block       = "10.0.0.0/16"

  tags = {
    Name = "proj-vpc"
    Task = "Project
  }
}

resource "aws_subnet" "Proj-SN" {
  vpc_id     = aws_vpc.Proj-SN.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "proj-sn"
    Task = "Project"
  }
}

resource "aws_internet_gateway" "Proj-IGW" {
  vpc_id = aws_vpc.Proj-VPC.id

  tags = {
    Name = "Proj-IGW"
    Task = "Project"
  }
}

resource "aws_route_table" "Proj-RT" {
  vpc_id = aws_vpc.Proj-VPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Proj-RT.id
  }

  tags = {
    Name = "Proj-RT"
    Task = "Project"
  }
}

resource "aws_route_table_association" "Proj-RTSA" {
  subnet_id      = aws_subnet.Proj-SN.id
  route_table_id = aws_route_table.Proj-RT.id
}
