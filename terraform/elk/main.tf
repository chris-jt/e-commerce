module "elk" {
  source  = "terraform-aws-modules/elasticsearch/aws"
  version = "2.1.0"

  domain_name           = "my-elk"
  elasticsearch_version = "7.10"

  cluster_config = {
    instance_type  = "t3.small.elasticsearch"
    instance_count = 1
  }

  ebs_options = {
    volume_size = 10
  }

  vpc_options = {
    subnet_ids         = var.subnet_ids
    security_group_ids = [aws_security_group.elk.id]
  }
}

data "aws_vpc" "selected" {
  id = var.vpc_id
}

output "kibana_endpoint" {
  value = module.elk.kibana_endpoint
}