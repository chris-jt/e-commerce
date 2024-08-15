# Variables
variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Nombre del EKS cluster"
  type        = string
  default     = "ecommerce-cluster"
}
