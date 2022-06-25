variable "region" {
  description = "Region in which the bastion host will be launched"
  default = "us-east-1"
}

variable "vpc_cidr" {
  description = "AWS CIDR associate.."
  default = "10.0.0.0/16"
}

variable "environment" {
  description = "stg environment for CIDR"
  default = "stg"
}

variable "private_subnets_cidr" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
}

variable "public_subnets_cidr" {
  type        = list(string)
  description = "The CIDR block for the public subnet"
  default     = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
}

variable "availability_zones" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}