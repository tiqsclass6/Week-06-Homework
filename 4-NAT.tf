resource "aws_eip" "Brazil-ElasticIP" {
  # vpc = true

  tags = {
    Name = "Brazil-ElasticIP"
  }
}

resource "aws_nat_gateway" "Brazil-Nat-GW" {
  allocation_id = aws_eip.Brazil-ElasticIP.id
  subnet_id     = aws_subnet.vpc-A-public-sa-east-1a.id

  tags = {
    Name = "Brazil-Nat-GW"
  }
}