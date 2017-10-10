#--------------------------------------------------------------
# These are the inputs to the public_routing module
#--------------------------------------------------------------

variable "igw_name" {
  description = "Name of the internet gateway"
  default     = "public"
}

variable "subnet_names" {
  description = "Names of the subnets that are public"
  type        = "list"
}

variable "project_name" {
  description = "Names of the project"
  type        = "string"
}

variable "environment" {
  description = "Environment - usually prod, staging, test or dev"
  type        = "string"
}

variable "vpc_id" {
  description = "Identifier of the VPC"
  type        = "string"
}

variable "subnet_ids" {
  description = "Identifiers of the subnets that are public"
  type        = "list"
}
