#--------------------------------------------------------------
# This module creates an AWS resource
#--------------------------------------------------------------


resource "aws_vpc" "vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_support   = true
  enable_dns_hostnames = true
  tags                 = "${var.vpc_tags}"
}

