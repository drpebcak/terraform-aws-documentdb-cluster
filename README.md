## Terraform AWS DocumentDB Cluster

This terraform module creates a documentDB cluster.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| apply\_immediately | Specifies whether any cluster modifications are applied immediately, or during the next maintenance window. | bool | `"false"` | no |
| backup\_retention\_period |  | number | `"7"` | no |
| ca\_cert\_identifier | Optional, identifier of the CA certificate to use for DB instance | string | `"rds-ca-2019"` | no |
| cluster\_instance\_class |  | string | `"db.r5.large"` | no |
| cluster\_instance\_count |  | number | `"1"` | no |
| cluster\_security\_group |  | list(string) | n/a | yes |
| group\_subnets |  | list(string) | `[]` | no |
| master\_password |  | string | n/a | yes |
| master\_username |  | string | n/a | yes |
| name |  | string | n/a | yes |
| parameters | additional parameters modified in parameter group | list(map(any)) | `[]` | no |
| preferred\_backup\_window |  | string | `"07:00-09:00"` | no |
| skip\_final\_snapshot |  | bool | `"false"` | no |
| storage\_encrypted |  | bool | `"true"` | no |

## Outputs

| Name | Description |
|------|-------------|
| arn |  |
| cluster\_members |  |
| cluster\_resource\_id |  |
| endpoint |  |
| hosted\_zone\_id |  |
| id |  |
| reader\_endpoint |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
