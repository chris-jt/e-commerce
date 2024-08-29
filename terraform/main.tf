provider "aws" {
  region = var.aws_region
}

resource "aws_eks_cluster" "ecommerce-cluster" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster_role.arn

  vpc_config {
    subnet_ids = module.vpc.private_subnets
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_cluster_policy,
    aws_iam_role_policy_attachment.eks_service_policy,
  ]
}

module "vpc" {
  source = "./vpc"
  region = var.aws_region
}

module "eks" {
  source       = "./eks"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
  cluster_name = var.cluster_name
}

module "elk" {
  source     = "./elk"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}