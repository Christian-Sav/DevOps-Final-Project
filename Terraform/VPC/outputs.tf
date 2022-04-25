output "vpc_id_out" {
    value = aws_vpc.Proj-VPC.id
    description = "The ID of the VPC to associate resources"
}

output "subnet_id_out" {
    value = aws_subnet.Proj-SN.id
    description = "The ID of the subnet to access the VPC"
}.
}