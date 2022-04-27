resource "aws_internet_gateway" "Proj-IGW" {
  vpc_id = var.vpc_id

  tags = {
    Name = "Proj-IGW"
    Task = "Project"
  }
}

resource "aws_route_table" "Proj-RT" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.Proj-IGW.id
  }

  tags = {
    Name = "Proj-RT"
    Task = "Project"
  }
}

resource "aws_route_table_association" "Proj-RTAA" {
  subnet_id      = var.subnet_1
  route_table_id = aws_route_table.Proj-RT.id
}

resource "aws_route_table_association" "Proj-RTAB" {
  subnet_id      = var.subnet_2
  route_table_id = aws_route_table.Proj-RT.id
}

