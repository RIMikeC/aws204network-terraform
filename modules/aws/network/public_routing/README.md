# This module creates a route table with public routing
# and associates the public subnets with it


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| environment | Environment - usually prod, staging, test or dev | - | yes |
| igw_name | Name of the internet gateway | `public` | no |
| project_name | Names of the project | - | yes |
| subnet_ids | Identifiers of the subnets that are public | - | yes |
| subnet_names | Names of the subnets that are public | - | yes |
| vpc_id | Identifier of the VPC | - | yes |

