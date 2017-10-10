provider "aws" {
  region = "${var.region}"
}

module vpc {
  source   = "../../../modules/aws/network/vpc"
  vpc_cidr = "${var.vpc_cidr}"

  vpc_tags {
    terraform   = "true"
    environment = "${var.environment}"
    cost_centre = "${var.cost_centre}"
    Name        = "${var.project_name}_${var.environment}"
  }
}

module subnets {
  source       = "../../../modules/aws/network/subnets"
  vpc_id       = "${module.vpc.id}"
  vpc_cidr     = "${var.vpc_cidr}"
  environment  = "${var.environment}"
  project_name = "${var.project_name}"
  subnet_names = ["${concat(var.private_subnets,var.public_subnets)}"]
}

module private_routing {
  source       = "../../../modules/aws/network/private_routing"
  vpc_id       = "${module.vpc.id}"
  environment  = "${var.environment}"
  project_name = "${var.project_name}"
  subnet_names = "${var.public_subnets}"
  subnet_ids   = ["${module.subnets.ids}"]
}

module public_routing {
  source       = "../../../modules/aws/network/public_routing"
  vpc_id       = "${module.vpc.id}"
  environment  = "${var.environment}"
  project_name = "${var.project_name}"
  subnet_names = "${var.public_subnets}"
  subnet_ids   = ["${module.subnets.ids}"]
}

module peering {
  source          = "../../../modules/aws/network/peer"
  peer_owner_id   = "${var.peer_owner_id["${var.environment}"]}"
  peer_vpc_id     = "${var.peer_vpc_id["${var.environment}"]}"
  peer_cidr_block = "${var.peer_cidr_block["${var.environment}"]}"
  vpc_id          = "${module.vpc.id}"
  environment     = "${var.environment}"
  project_name    = "${var.project_name}"
  route_table     = "${module.private_routing.id}"
}

module jump {
  source       = "../../../modules/aws/ec2/jump_box"
  subnet       = "${module.subnets.ids[0]}"
  public       = "${var.public}"
  environment  = "${var.environment}"
  project_name = "${var.project_name}"
}
