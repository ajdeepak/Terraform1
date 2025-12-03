output "vpc_id" {
    value = aws_vpc.prodvpc1.id
  }
output "public_subnets" {
  value = aws_subnet.public_subnet[*].id
}




