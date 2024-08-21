output "vpc_id" {
  description = "ID of the VPC"
  value       = module.vpc.vpc_id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.vpc.private_subnet_ids
}

output "frontend_url" {
  description = "URL to access the frontend"
  value       = module.eks.frontend_url
}

output "eks_cluster_endpoint" {
  description = "Endpoint for EKS control plane"
  value       = module.eks.cluster_endpoint
}

output "ecr_repository_urls" {
  description = "URLs of the ECR repositories"
  value       = module.ecr.repository_urls
}

output "elk_kibana_endpoint" {
  description = "Endpoint for Kibana"
  value       = module.elk.kibana_endpoint
}
