# Module aws_security_groups

This is a module for creating security groups

### Backlog

 - Further testing
 - Documenting examples

### Contents

 - main.tf
 - this file


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

