variable "instance_type" {
    type = string
  
}
variable "ami_id" {
    type = string
}

variable "vpc_id" {
  description = "VPC ID to deploy resources into"
  type        = string
}
variable "public_subnets" {
  description = "List of public subnet IDs"
  type        = list(string)
}

