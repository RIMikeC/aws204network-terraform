# This module creates subnets in an existing VPC,
# the VPC id is passed as a string.
# The subnets created are spread over 3 AZs, as per best practice.
# The names and CIDRs to use are passed in as a lists.
# The standard map of tags is used.


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| cname | canonical name of the resource | `n/a` | no |
| cost_centre | who is paying | `undefined` | no |
| dr | reserved for use in disaster recovery | `undefined` | no |
| environment | one of dev, test, staging or prod | `dev` | no |
| expiry | Date after which the resource is not needed | `01/12/2017` | no |
| product | short name of product | - | yes |
| programme | short name of programme | - | yes |
| project | short name of project | - | yes |
| security_class | Security classification | `sensitive` | no |
| subnet_cidrs | subnet CIDRS | - | yes |
| subnet_ids | Subnet IDs | `<list>` | no |
| subnet_names | list of subnets to create | - | yes |
| subnet_tags | subnet metadata | `<map>` | no |
| support | reserved for support purposes | `undefined` | no |
| userid | AWS ID of the account creating the resource | - | yes |
| vpc_id | Identifier for the VPC | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| ids | `List of the identifiers of the subnets created` |

