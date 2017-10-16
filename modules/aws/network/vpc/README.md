# This module creates an VPC resource
# and associated DHCP options and gateways


## Inputs

| Name | Description | Default | Required |
|------|-------------|:-----:|:-----:|
| ri_domain | Domain | - | yes |
| ri_name_servers | Domain | - | yes |
| vpc_cidr | CIDR block | - | yes |
| vpc_tags | VPC metadata | - | yes |

## Outputs

| Name | Description |
|------|-------------|
| cidr_block | CIDR block allocated to the VPC |
| igw_id | Identifier for the internet gateway |
| main_route_table_id | Identifier for the main route table |
| vgw_id | Identifier for the virtual private gateway |
| vpc_id | Identifier for the virtual private cloud |

