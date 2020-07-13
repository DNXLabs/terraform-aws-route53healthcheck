# terraform-aws-route53healthcheck

[![Lint Status](https://github.com/DNXLabs/terraform-aws-route53healthcheck/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-route53healthcheck/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-route53healthcheck)](https://github.com/DNXLabs/terraform-aws-route53healthcheck/blob/master/LICENSE)

AWS Route53 healthcheck Application Module

Requires region us-east-1

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.20 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_sns\_topic\_arn | n/a | `string` | `""` | no |
| failure\_threshold | n/a | `number` | `2` | no |
| healthcheck\_path | n/a | `string` | `"/"` | no |
| hostname | app Hostname to check | `any` | n/a | yes |
| name | Name of app service needs to be checked | `any` | n/a | yes |
| period | n/a | `number` | `60` | no |
| port | Port for target check | `string` | `"80"` | no |
| protocol | n/a | `string` | `"HTTP"` | no |
| threshold | n/a | `number` | `1` | no |
| time\_request | n/a | `number` | `30` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-route53healthcheck/blob/master/LICENSE) for full details.