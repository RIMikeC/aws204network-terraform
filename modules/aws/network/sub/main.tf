#--------------------------------------------------------------
# This module creates subnets in an existing VPC,
# the VPC id is passed as a string.
# The subnets created are spread over 3 AZs, as per best practice.
# The names and CIDRs to use are passed in as a lists.
# The standard map of tags is used.
#--------------------------------------------------------------

# Fetch the names of the availability zones
data "aws_availability_zones" "current" {}

## Create subnet resources
resource "aws_subnet" "subnet" {
  count                           = "${length(var.subnet_names)}"
  availability_zone               = "${data.aws_availability_zones.current.names[count.index % 3]}"
  vpc_id                          = "${var.vpc_id}"
  cidr_block                      = "${var.subnet_cidrs[count.index]}"
  map_public_ip_on_launch         = "${format("%.3s",var.subnet_names[count.index]) == "pub" ? true : false}"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name           = "${var.subnet_names[count.index]}"
    programme      = "${var.programme}"
    project        = "${var.project}"
    product        = "${var.product}"
    cost_centre    = "${var.cost_centre}"
    creator        = "${var.userid}"
    environment    = "${var.environment}"
    security_class = "${var.security_class}"
    terraform      = "true"
    expiry         = "${var.expiry}"
    cname          = "${var.cname}"
    dr             = "${var.dr}"
    support        = "${var.support}"
  }
}
