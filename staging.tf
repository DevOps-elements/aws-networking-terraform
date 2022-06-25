resource "random_id" "random_id_prefix" {
  byte_length = 2
}

locals {
  staging_availability_zones = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

module "Networking" {
  source               = "./modules/Networking"
  region               = var.region
  environment          = var.environment
  vpc_cidr             = var.vpc_cidr
  public_subnets_cidr  = var.public_subnets_cidr
  private_subnets_cidr = var.private_subnets_cidr
  availability_zones   = local.staging_availability_zones

}