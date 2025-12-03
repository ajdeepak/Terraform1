
variable "vpccidr" {
  type = string

}



variable "public_subnet_cidr" {
  type = list(string)

}

variable "private_subnet_cidr" {
  type = list(string)

}

variable "azs" {
  type = list(string)

}

variable "instance_type" {
    type = string
  
}
variable "ami_id" {
    type = string
}







