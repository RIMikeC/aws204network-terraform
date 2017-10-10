# This module creates subnets in an existing VPC,
# the VPC id is passed as a parameter.
# The names of the subnets are passed in as a list.
# Note that it expects the list of subnets to be an
# equal number of private and public subnets, with the
# private subnets listed first.


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| environment | Environment | - | yes |
| project_name | Name of the project | - | yes |
| subnet_ids | Subnet IDs | `<list>` | no |
| subnet_names | list of subnets to create | - | yes |
| vpc_cidr | CIDR block | - | yes |
| vpc_id | Identifier for the VPC | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| ids |  |

