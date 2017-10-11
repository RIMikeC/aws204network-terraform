#--------------------------------------------------------------
# This module defines the module inputs
#--------------------------------------------------------------

variable "vpc_id" {
  description = "Identifier for the VPC"
  type        = "string"
}

variable "subnet_cidrs" {
  description = "subnet CIDRS"
  type        = "list"
}

variable "subnet_names" {
  description = "list of subnets to create"
  type        = "list"
}

variable "subnet_ids" {
  description = "Subnet IDs"
  type        = "list"
  default     = [1, 2]
}

variable "subnet_tags" {
  description = "subnet metadata"
  type        = "map"
  default     = {}
}

variable "programme" {
  type        = "string"
  description = "short name of programme"
}

variable "project" {
  type        = "string"
  description = "short name of project"
}

variable "product" {
  type        = "string"
  description = "short name of product"
}

variable "cost_centre" {
  type        = "string"
  description = "who is paying"
  default     = "undefined"
}

variable "userid" {
  type        = "string"
  description = "AWS ID of the account creating the resource"
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
  default     = "01/12/2017"
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
