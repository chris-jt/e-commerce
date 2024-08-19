resource "aws_ecr_repository" "repos" {
  for_each = toset(["frontend", "microservicio1", "microservicio2", "microservicio3"])
  name     = each.key
}

output "repository_urls" {
  value = { for k, v in aws_ecr_repository.repos : k => v.repository_url }
}