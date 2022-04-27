variable "qa_cluster_iam_role_arn" {
    description = "IAM Role for EKS Cluster"
}

variable "qa_node_iam_role_arn" {
    description = "IAM Role for EKS Node Group"
}


variable "available_subnets" {
    type = list(string)
    description = "Available subnets"
}

variable "subnet_ids" {
    description = "Subnet Ids"
}