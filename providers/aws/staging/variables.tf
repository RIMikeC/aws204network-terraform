# Variables

variable region {
  default = "us-east-1"
}

variable "vpc_cidr" {
  type        = "string"
  description = "CIDR block for the VPC (IPv4 only)"
  default     = "10.204.0.0/22"
}

variable "project_name" {
  default = "test204"
}

variable "environment" {
  default = "dev"
}

variable "cost_centre" {
  default = "81182"
}

variable "private_subnets" {
  type        = "list"
  description = "list of the private subnets to create"
  default     = ["pri_a", "pri_b", "pri_c"]
}

variable "public_subnets" {
  type        = "list"
  description = "list of the public subnets to create"
  default     = ["pub_a", "pub_b", "pub_c"]
}

variable "peer_owner_id" {
  type        = "map"
  description = "Owner of the ID of the VPC to peer to"

  default = {
    dev     = "556748783639"
    test    = "556748783639"
    staging = "556748783639"
    prod    = "376076567968"
  }
}

variable "peer_vpc_id" {
  type        = "map"
  description = "ID of the VPC to peer to"

  default = {
    dev     = "vpc-2ee35b4a"
    test    = "vpc-2ee35b4a"
    staging = "vpc-2ee35b4a"
    prod    = "vpc-2efefe4a"
  }
}

variable "peer_cidr_block" {
  type        = "map"
  description = "CIDR of the VPC to peer to"

  default = {
    dev     = "10.201.0.0/16"
    test    = "10.201.0.0/16"
    staging = "10.201.0.0/16"
    prod    = "10.202.0.0/22"
  }
}

variable "public" {
  type        = "string"
  description = "boolean value for if instance is public or not"
  default     = "false"
}
