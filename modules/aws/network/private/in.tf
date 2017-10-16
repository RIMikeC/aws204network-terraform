#--------------------------------------------------------------
# This module creates routing for the private subnets whose
# identifiers are passed in as a parameter
#--------------------------------------------------------------

variable "vpc_id" {
  description = "Identifier of the VPC"
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

variable "pr_tags" {
  description = "tags"
  type        = "map"
}
