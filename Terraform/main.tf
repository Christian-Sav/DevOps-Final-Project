provider "aws" {
  region                   = "eu-west-2"
  shared_credentials_files = ["~/.aws/credentials"]

module "VPC" {
  source = "./VPC"
  vpc_cidr_block       = "10.0.0.0/16"
}

module "EC2" {
  source = "./EC2"
  subnet_id = module.Subnet.subnet_1
  ami_id = var.ami_id
  vpc_security_group_ids = [module.security_group.sg_id]
}

module "Subnet" {
    source = "./Subnet"
    vpc_id = module.VPC.vpc_id
    vpc_cidr_block = module.VPC.vpc_cidr_block
}

module "igw" {
    source = "./IGW"
    vpc_id = module.VPC.vpc_id
    subnet_1 = module.Subnet.subnet_1
    subnet_2 = module.Subnet.subnet_2
}

module "Security_Group" {
    source = "./Security_Group"
    vpc_id = module.VPC.vpc_id
}

module "iam" {
    source = "./IAM"
}

module "eks" {
    source = "./EKS"
    subnet_ids = module.Subnet.subnet_ids
    qa_cluster_iam_role_arn = module.iam.cluster_iam_role
    qa_node_iam_role_arn = module.iam.node_iam_role
    available_subnets = [module.Subnet.subnet_1, module.Subnet.subnet_2]