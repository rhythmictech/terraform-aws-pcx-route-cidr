# terraform-pcx-route-cidr
[![](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr/actions)

Create route table entries associated with a [Peering Connection](https://docs.aws.amazon.com/vpc/latest/peering/what-is-vpc-peering.html).

Example:

```
module "pcx_route_cidr1 {
  source           = "git::https://github.com/rhythmictech/terraform-aws-pcx-route-cidr"
  destination_cidr = "172.32.0.0/16"
  pcx_id           = module.pcx.pcx_id
  route_tables     = concat(module.vpc.public_route_table_ids, module.vpc.private_route_table_ids)
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| destination\_cidr | CIDR to add to route tables | `string` | n/a | yes |
| pcx\_id | Peering Connection | `string` | n/a | yes |
| route\_table\_count | How many route tables are going to be created? | `number` | `null` | no |
| route\_tables | Route tables to install route in | `list(string)` | n/a | yes |

## Outputs

No output.

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Related Projects
* [Peering Connection](https://github.com/rhythmictech/terraform-aws-pcx)
