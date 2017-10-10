#--------------------------------------------------------------
# This defines the outputs of this module
#--------------------------------------------------------------

output "id" {
  description = "VPC identifier"
  value       = "${aws_vpc.vpc.id}"
}

output "cidr" {
  value       = "${aws_vpc.vpc.cidr_block}"
  description = "CIDR block"
}

output "route_table" {
  description = "Main route table identifier"
  value       = "${aws_vpc.vpc.main_route_table_id}"
}
