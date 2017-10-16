#--------------------------------------------------------------
# This defines the outputs of this module
#--------------------------------------------------------------

output "id" {
  value       = "${aws_vpn_gateway.vgw.id}"
  description = "Identifier of the gateway created"
}

