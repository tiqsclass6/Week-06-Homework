# VPC-A-Production
output "VPC-A-SaoPaulo-Prod" {
  description = "VPC-A-Production"
  value       = aws_vpc.VPC-A-SaoPaulo-Prod.id
}

# VPC-B-Development
output "VPC-B-SaoPaulo-Dev" {
  description = "VPC-B-Development"
  value       = aws_vpc.VPC-B-SaoPaulo-Dev.id
}

# VPC-C-Production
output "VPC-C-SaoPaulo-Test" {
  description = "VPC-A-Test"
  value       = aws_vpc.VPC-C-SaoPaulo-Test.id
}

# AWS-Subnet-vpc-A-public-sa-east-1a
output "vpc-A-public-sa-east-1a" {
  description = "vpc-A-public-sa-east-1a"
  value       = aws_subnet.vpc-A-public-sa-east-1a.id
}

# AWS-Subnet-vpc-A-private-sa-east-1a
output "vpc-A-private-sa-east-1a" {
  description = "vpc-A-private-sa-east-1a"
  value       = aws_subnet.vpc-A-private-sa-east-1a.id
}

# AWS-Subnet-vpc-B-private-sa-east-1b
output "vpc-B-private-sa-east-1b" {
  description = "vpc-B-private-sa-east-1b"
  value       = aws_subnet.vpc-B-private-sa-east-1b.id
}

# AWS-Subnet-vpc-C-private-sa-east-1c
output "vpc-C-private-sa-east-1c" {
  description = "vpc-C-private-sa-east-1c"
  value       = aws_subnet.vpc-C-private-sa-east-1c.id
}

# AWS-TransitGW-Brazil-TGW01
output "Brazil-TGW01" {
  description = "Brazil-TGW01"
  value       = aws_ec2_transit_gateway.Brazil-TGW01.id
}

# AWS-SaoPaulo-Dev-SG02
output "aws_security_group-VPC-B-SaoPaulo-Dev-SG02" {
  description = "VPC-B-SaoPaulo-Dev-SG02"
  value       = aws_security_group.VPC-B-SaoPaulo-Dev-SG02.id
}

# AWS-VPC-A-SaoPaulo-Prod-With-Bastion-01
output "VPC-A-SaoPaulo-Prod-With-Bastion-01" {
  description = "VPC-A-SaoPaulo-Prod-With-Bastion-01"
  value       = aws_security_group.VPC-A-SaoPaulo-Prod-With-Bastion-01.id
}