resource "aws_vpc" "this" {
  cidr_block = var.cidr_block
  tags = {
    Name        = var.name
    Environment = var.environment
    Owner       = var.owner
  }
}
