provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./vpc"
  region = var.region
}

module "eks" {
  source       = "./eks"
  vpc_id       = module.vpc.vpc_id
  subnet_ids   = module.vpc.private_subnets
  cluster_name = var.cluster_name
}

module "ecr" {
  source = "./ecr"
}

module "elk" {
  source     = "./elk"
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}