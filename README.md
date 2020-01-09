# terraform-pcx-route-cidr
[![](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr/workflows/check/badge.svg)](https://github.com/rhythmictech/terraform-aws-pcx-route-cidr/actions)

Manage a peering connection route table entry

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| destination\_cidr |  | string | n/a | yes |
| pcx\_id |  | string | n/a | yes |
| route\_tables |  | list(string) | n/a | yes |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
