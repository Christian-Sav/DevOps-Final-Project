output "vpc_id" {
    value = aws_vpc.Proj-VPC.id
}

output "vpc_cidr_block" {
    value = aws_vpc.Proj-VPC.cidr_block
}