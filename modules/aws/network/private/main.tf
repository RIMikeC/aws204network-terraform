#--------------------------------------------------------------
# This module creates routing for the private subnets whose
# identifiers are passed in as a parameter
#--------------------------------------------------------------


## Create a route table to be used by all private subnets in this VPC

resource "aws_route_table" "private" {
  vpc_id = "${var.vpc_id}"
  tags   = "${var.pr_tags}"
}

## Create association between subnets and route table


# resource "aws_route_table_association" "private" {
#   count          = "${length(var.subnet_names)}"
#   subnet_id      = "${element(var.subnet_ids,count.index)}"
#   route_table_id = "${aws_route_table.private.id}"
# }

