#--------------------------------------------------------------
# These are the module inputs
#--------------------------------------------------------------

data "aws_ami" "ami" {
  most_recent = true

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }

  filter {
    name   = "image-type"
    values = ["machine"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-20*64-ebs"]
  }
}

variable "subnet" {
  description = "Optional subnet to start the instance in"
  type        = "string"
}

variable "public" {
  description = "Optional public IP address"
  type        = "string"
}

variable "environment" {
  description = "Environment, normally pros, staging, test or dev"
  type        = "string"
}

variable "project_name" {
  description = "Name of the project withjoiut spaces"
  type        = "string"
}
