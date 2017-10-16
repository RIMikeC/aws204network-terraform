# This module creates routing for the subnets whose
# identifiers are passed in as a parameter


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| environment | Environment, usually prod, staging, test or dev | - | yes |
| name | Name | `private` | no |
| project_name | Name of the project | - | yes |
| subnet_ids | List of the identifiers of the subnets | - | yes |
| subnet_names | List of the subnet names | - | yes |
| vpc_id | Identifier of the VPC | - | yes |

