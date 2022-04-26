output "subnet_1" {
    value = aws_subnet.Proj-SNs[0].id
}

output "subnet_2" {
    value = aws_subnet.Proj-SNs[1].id
}

output "subnet_ids" {
    value = aws_subnet.Proj-SNs[*].id
}