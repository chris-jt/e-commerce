resource "aws_ecr_repository" "repos" {
  for_each = toset(["frontend", "merchandise", "products", "shopping-cart"])
  name     = each.key
}

output "repository_urls" {
  value = { for k, v in aws_ecr_repository.repos : k => v.repository_url }
}