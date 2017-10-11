# Variables


variable region {
  default = "us-east-1"
}

variable "vpc_cidr" {
  type        = "string"
  description = "CIDR block for the VPC (IPv4 only)"
  default     = "10.204.0.0/16"
}

variable "programme" {
  type        = "string"
  description = "short name of programme"
  default     = "Base AWS infrastructure"
}

variable "project" {
  type        = "string"
  description = "short name of project"
  default     = "Base AWS infrastructure"
}

variable "product" {
  type        = "string"
  description = "short name of product"
  default     = "Development"
}

variable "cost_centre" {
  type        = "string"
  description = "who is paying"
  default     = "81182"
}

variable "userid" {
  type        = "string"
  description = "AWS ID of the account creating the resource"
  default     = "460402331925"
}

variable "environment" {
  type        = "string"
  description = "one of dev, test, staging or prod"
  default     = "dev"
}

variable "security_class" {
  type        = "string"
  description = "Security classification"
  default     = "sensitive"
}

variable "expiry" {
  type        = "string"
  description = "Date after which the resource is not needed"
  default     = "01/12/2027"
}

variable "cname" {
  type        = "string"
  description = "canonical name of the resource"
  default     = "n/a"
}

variable "dr" {
  type        = "string"
  description = "reserved for use in disaster recovery"
  default     = "undefined"
}

variable "support" {
  type        = "string"
  description = "reserved for support purposes"
  default     = "undefined"
}

variable "subnet_names" {
  type        = "list"
  description = "list of the subnets to create"
  default     = ["undefined"]
}

variable "private_subnets" {
  type        = "list"
  description = "list of the private subnets to create"
  default     = ["pri_a", "pri_b", "pri_c"]
}

variable "mixed_subnets" {
  type        = "list"
  description = "list of the mixed use subnets to create"
  default     = ["mix_a", "mix_b", "mix_c"]
}

variable "public_subnets" {
  type        = "list"
  description = "list of the public subnets to create"
  default     = ["pub_a", "pub_b", "pub_c"]
}

variable "subnet_cidrs" {
  type        = "list"
  description = "list of the CIDRs to create"
  default     = ["undefined"]
}

variable "private_cidrs" {
  type        = "list"
  description = "list of the private subnets to create"
  default     = ["10.204.0.0/18", "10.204.64.0/18", "10.204.128.0/18"]
}

variable "mixed_cidrs" {
  type        = "list"
  description = "list of the mixed use subnets to create"
  default     = ["10.204.192.0/21", "10.204.200.0/21", "10.204.208.0/21"]
}

variable "public_cidrs" {
  type        = "list"
  description = "list of the public subnets to create"
  default     = ["10.204.224.0/21", "10.204.232.0/21", "10.204.240.0/21"]
}

variable "public" {
  type        = "string"
  description = "boolean value for if instance is public or not"
  default     = "false"
}

