output "vpc_id" {
    value = aws_vpc.prodvpc1.id
  }
output "public_subnet" {
  value = aws_subnet.public[*].id
}


