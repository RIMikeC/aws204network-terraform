#--------------------------------------------------------------
# This defines the outputs of this module
#--------------------------------------------------------------

output "vpc_id" {
  description = "VPC identifier"
  value       = "${aws_vpc.vpc.id}"
}

output "cidr_block" {
  description = "VPC identifier"
  value       = "${aws_vpc.vpc.cidr_block}"
}

output "main_route_table_id" {
  description = "Main route table"
  value       = "${aws_vpc.vpc.main_route_table_id}"
}

output "vgw_id" {
  description = "VGW identifier"
  value       = "${aws_vpn_gateway.vgw.id}"
}

output "igw_id" {
  description = "IGW identifier"
  value       = "${aws_internet_gateway.igw.id}"
}
