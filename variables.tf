variable "aws_region" {
  description = "The AWS region to deploy resources."
  type        = string
  default     = "us-east-2"
}

variable "vpc_name" {
  description = "The name of the VPC."
  type        = string
  default     = "my-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC ."
  type        = string
  default     = "10.0.0.0/16"
}

variable "private_subnets" {
  default = {
    "private_subnet_1" = 1
    "private_subnet_2" = 2
  }
}

variable "public_subnets" {
  default = {
    "public_subnet_1" = 1
    "public_subnet_2" = 2
  }
}