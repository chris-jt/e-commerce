output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "frontend_url" {
  value = kubernetes_service.frontend.status.0.load_balancer.0.ingress.0.hostname
}