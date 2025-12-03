output "vpc_security_group_ids" {
  value = aws_security_group.web_sg.id

}

output "ec2_instance_ids" {
  description = "IDs of the created EC2 instances"
  value       = aws_instance.web[*].id
}

output "ec2_public_ips" {
  description = "Public IP addresses of the EC2 instances"
  value       = aws_instance.web[*].public_ip
}

output "ec2_private_ips" {
  description = "Private IP addresses of the EC2 instances"
  value       = aws_instance.web[*].private_ip
}

output "web_security_group_id" {
  description = "Security group ID of the web servers"
  value       = aws_security_group.web_sg.id
}
