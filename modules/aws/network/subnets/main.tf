#--------------------------------------------------------------
# This module creates subnets in an existing VPC,
# the VPC id is passed as a parameter.
# The number of AZs to use is passed in as a parameter.
# The names of the subnets are passed in as a list.
# Note that it expects the list of subnets to be an
# equal number of private and public subnets, with the
# private subnets listed first.
# Also note that this code only works for up to 8 subnets.
#--------------------------------------------------------------

# Fetch the names of the availability zones
data "aws_availability_zones" "current" {}

## Create subnet resources
resource "aws_subnet" "subnet" {
  count                           = "${length(var.subnet_names)}"
  availability_zone               = "${data.aws_availability_zones.current.names[count.index % var.AZ_count]}"
  vpc_id                          = "${var.vpc_id}"
  cidr_block                      = "${cidrsubnet(var.vpc_cidr, 3, count.index)}"
  assign_ipv6_address_on_creation = "false"

  tags {
    Name         = "${element(var.subnet_names,count.index)}"
    terraform    = "true"
    environment  = "${var.environment}"
    project_name = "${var.project_name}"
  }
}
