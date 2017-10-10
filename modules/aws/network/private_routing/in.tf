#--------------------------------------------------------------
# This module creates routing for the private subnets whose
# identifiers are passed in as a parameter
#--------------------------------------------------------------

variable "name" {
  description = "Name"
  type        = "string"
  default     = "private"
}

variable "vpc_id" {
  description = "Identifier of the VPC"
  type        = "string"
}

variable "environment" {
  description = "Environment, usually prod, staging, test or dev"
  type        = "string"
}

variable "subnet_names" {
  description = "List of the subnet names"
  type        = "list"
}

variable "subnet_ids" {
  description = "List of the identifiers of the subnets"
  type        = "list"
}

variable "project_name" {
  description = "Name of the project"
  type        = "string"
}
