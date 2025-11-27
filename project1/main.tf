module "vpc" {
    source = "./modules/vpc"
    vpccidr = var.vpccidr
    public_subnet_cidr = var.public_subnet_cidr
    private_subnet_cidr = var.private_subnet_cidr
    azs = var.azs


}
