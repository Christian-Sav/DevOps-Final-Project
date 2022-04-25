output "vpc_id" {
    value = Proj-variable "vpc_id" {
    description = "The ID of the VPC to associate resources"
}

variable "subnet_id" {
    description = "The ID of the subnet to access the VPC"
}.
}