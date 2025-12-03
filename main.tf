module "vpc" {
    source = "./modules/vpc"
    vpccidr = var.vpccidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    azs = var.azs

}

module "compute" {
    source = "./modules/compute"
    public_subnets = module.vpc.public_subnets
    vpc_id        = module.vpc.vpc_id
    instance_type = var.instance_type
    ami_id = var.ami_id
}



