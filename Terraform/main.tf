provider "aws" {
  region                   = "eu-west-2"
  shared_credentials_files = ["~/.aws/credentials"]

module "VPC" {
  source = "./VPC"
}

module "EC2" {
  source = "./EC2"
  vpc_id = module.Proj-VPC.vpc_id
}
