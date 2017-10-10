#--------------------------------------------------------------
# This defines the outputs of this module
#--------------------------------------------------------------

output "ids" {
  value       = ["${aws_subnet.subnet.*.id}"]
  description = "List of the identifiers of the subnets created"
}
