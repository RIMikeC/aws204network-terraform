#--------------------------------------------------------------
# This module creates a virtual private gateway
#--------------------------------------------------------------

## Create a VGW

resource "aws_vpn_gateway" "vgw" {
  vpc_id = "${var.vpc_id}"

   tags = "${var.vgw_tags}"

#  tags {
#    Name = "${var.environment} VGW"
#  }

  #   tags {
  #     Name           = "${var.environment} VGW"
  #     programme      = "${var.programme}"
  #     project        = "${var.project}"
  #     product        = "${var.product}"
  #     cost_centre    = "${var.cost_centre}"
  #     userid         = "${var.userid}"
  #     environment    = "${var.environment}"
  #     security_class = "${var.security_class}"
  #     terraform      = "true"
  #     expiry         = "${var.expiry}"
  #     cname          = "${var.cname}"
  #     dr             = "${var.dr}"
  #     support        = "${var.support}"
  #   }
}
