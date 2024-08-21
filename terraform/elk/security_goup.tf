resource "aws_security_group" "elk" {
  name        = "elk-sg"
  description = "Allow inbound traffic to ELK"
  vpc_id      = var.vpc_id

  ingress {
    description = "HTTPS from VPC"
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = [data.aws_vpc.selected.cidr_block]
  }
}