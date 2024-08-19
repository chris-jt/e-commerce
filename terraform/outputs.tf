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