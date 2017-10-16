provider "aws" {
  region = "${var.region}"
}

# Create a VPC and all associated gateways
# add dhcp as per https://github.com/River-Island/shared-terraform/blob/master/modules/transit/vpc.tf

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

  #  ri_domain       = "${var.environment}.${var.project}.ri-tech.io"
  ri_domain = "dev.test.ri-tech.op"

   ri_name_servers = ["${var.ri_dc_dns_server}", "${cidrhost(var.vpc_cidr, 2)}"]
}

# Divide the VPC just created into subnets

module subnets {
  source = "../../../modules/aws/network/sub"
  vpc_id = "${module.vpc.vpc_id}"

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

# Create a private route table, add routes to it and associate it with the private subnets

module private_routing {
  source       = "../../../modules/aws/network/private"
  vpc_id       = "${module.vpc.vpc_id}"
  subnet_names = "${var.public_subnets}"
  subnet_ids   = ["${module.subnets.ids}"]

  pr_tags {
    Name           = "Dev routes"
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
}

# Create a private/public egress route table, add routes to it and associate it with the mixed use case subnets


# Create a public route table, add routes to it and associate it with the public subnets

