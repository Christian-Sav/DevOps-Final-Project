output "endpoint" {
    value = aws_eks_cluster.QA-cluster.endpoint
}

output "kubeconfig-certificate-authority-data" {
    value = aws_eks_cluster.QA-cluster.certificate_authority.0.data
}

output "cluster_name" {
    value = aws_eks_cluster.QA-cluster.name
}