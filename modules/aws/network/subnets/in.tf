#--------------------------------------------------------------
# This module defines the module inputs
#--------------------------------------------------------------

variable "vpc_id" {
  description = "Identifier for the VPC"
  type        = "string"
}

variable "vpc_cidr" {
  description = "CIDR block"
  type        = "string"
}

variable "subnet_names" {
  description = "list of subnets to create"
  type        = "list"
}

variable "project_name" {
  description = "Name of the project"
  type        = "string"
}

variable "environment" {
  description = "Environment"
  type        = "string"
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = "list"
  default     = ["dummy"]
}

variable "AZ_count" {
  description = "Number of AZs to spread across"
  type        = "string"
  default     = "3"
}
