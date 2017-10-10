#--------------------------------------------------------------
# This module creates a route table with public routing
# and associates the public subnets with it
#--------------------------------------------------------------

## Create internet gateway resource

resource "aws_internet_gateway" "public" {
  vpc_id = "${var.vpc_id}"

  tags {
    Name         = "${var.igw_name}"
    terraform    = "true"
    environment  = "${var.environment}"
    project_name = "${var.project_name}"
  }
}

## create a route table resource

resource "aws_route_table" "public" {
  vpc_id = "${var.vpc_id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.public.id}"
  }

  tags {
    Name         = "${var.project_name}-public"
    terraform    = "true"
    environment  = "${var.environment}"
    project_name = "${var.project_name}"
  }
}

## Create association between subnets and route table

resource "aws_route_table_association" "public" {
  count          = "${length(var.subnet_names)}"
  subnet_id      = "${element(var.subnet_ids,count.index+(length(var.subnet_ids)/2))}"
  route_table_id = "${aws_route_table.public.id}"
}
