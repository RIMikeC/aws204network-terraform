# Module cwevents

This module was written by Simone


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| environment | Normally dev staging or prod | `ploppy` | no |
| private_subnets | private subnets in the VPC | `<list>` | no |
| project-name | Name of project with no spaces | `ploppy` | no |
| route_table | ID of the main route table | `ploppy` | no |
| sg-name | Name pf the sec group | `ploppy` | no |
| vpc_cidr | CIDR for the VPC | - | yes |
| vpc_id | ID | `ploppy` | no |
| vpc_tags | Tags to add to the VPC | - | yes |

