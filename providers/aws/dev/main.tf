provider "aws" {
  region = "${var.region}"
}

module vpc {
  source   = "../../../modules/aws/network/vpc"
  vpc_cidr = "${var.vpc_cidr}"

  vpc_tags {
    Name           = "Development VPC"
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

module subnets {
  source = "../../../modules/aws/network/sub"
  vpc_id = "${module.vpc.id}"

  subnet_cidrs = ["${concat(var.private_cidrs,var.mixed_cidrs,var.public_cidrs)}"]
  subnet_names = ["${concat(var.private_subnets,var.mixed_subnets,var.public_subnets)}"]

  programme      = "${var.programme}"
  project        = "${var.project}"
  product        = "${var.product}"
  cost_centre    = "${var.cost_centre}"
  userid         = "${var.userid}"
  environment    = "${var.environment}"
  security_class = "${var.security_class}"
  expiry         = "${var.expiry}"
  cname          = "${var.cname}"
  dr             = "${var.dr}"
  support        = "${var.support}"
}
