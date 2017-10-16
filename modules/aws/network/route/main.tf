#--------------------------------------------------------------
# This module creates routing for the private subnets whose
# identifiers are passed in as a parameter
#--------------------------------------------------------------

## Create a route table to be used by all subnets in this VPC

resource "aws_route_table" "routes" {
  count  = "3"
  vpc_id = "${var.vpc_id}"

  tags {
    Name           = "${var.table_names[count.index]}"
    programme      = "${var.programme}"
    project        = "${var.project}"
    product        = "${var.product}"
    cost_centre    = "${var.cost_centre}"
    userid         = "${var.userid}"
    environment    = "${var.environment}"
    security_class = "${var.security_class}"
    terraform      = "true"
    expiry         = "${var.expiry}"
    cname          = "${var.cname}"
    dr             = "${var.dr}"
    support        = "${var.support}"
  }

# Ideally all of the routes would be in a list which is passed as a parameter,
# However, it is not currently possible to add routes in terraform to a route
# table created in terraform  :(  once this exists, then this code should 
# be altered to use the new functionality
# So, for now, all of the routes are in-line
# 
#   route {
#     cidr_block = "10.44.192.228/30"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.44.192.232/30"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.44.204.152/30"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.44.205.48/30"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.78.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.102.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.103.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.104.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.111.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.140.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.140.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.150.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.151.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.228.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.229.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.229.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.230.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.231.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.240.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "10.241.0.0/16"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "80.85.65.152/30"
#     gateway_id = "${var.vgw_id}"
#   }
# 
#   route {
#     cidr_block = "80.85.65.156/30"
#     gateway_id = "${var.vgw_id}"
#   }
# }
# 
# ## Create association between subnets and route table
# 
# 
# # resource "aws_route_table_association" "private" {
# #   count          = "${length(var.subnet_names)}"
# #   subnet_id      = "${element(var.subnet_ids,count.index)}"
# #   route_table_id = "${aws_route_table.private.id}"
# # }
# 
# 
