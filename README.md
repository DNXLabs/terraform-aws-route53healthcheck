# terraform-aws-route53healthcheck

[![Lint Status](https://github.com/DNXLabs/terraform-aws-route53healthcheck/workflows/Lint/badge.svg)](https://github.com/DNXLabs/terraform-aws-route53healthcheck/actions)
[![LICENSE](https://img.shields.io/github/license/DNXLabs/terraform-aws-route53healthcheck)](https://github.com/DNXLabs/terraform-aws-route53healthcheck/blob/master/LICENSE)

This is a module to configure health check and related AWS CloudWatch metric alarms.

The following resources will be created:

 - Cloudwatch metric alarms - This metric monitors whether the service custumer is down or not

In addition you have the option to:

 - Create or not a Simple Notification Service topic (SNS)

<!--- BEGIN_TF_DOCS --->

## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12.0 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| aws\_sns\_topic\_arn | n/a | `string` | `""` | no |
| cloudwatch\_alarms\_enabled | n/a | `bool` | `false` | no |
| failure\_threshold | n/a | `number` | `3` | no |
| healthcheck\_path | n/a | `string` | `"/"` | no |
| hostname | app Hostname to check | `any` | n/a | yes |
| measure\_latency | Latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console | `bool` | `false` | no |
| period | n/a | `number` | `60` | no |
| port | Port for target check | `string` | `"80"` | no |
| protocol | n/a | `string` | `"HTTP"` | no |
| request\_interval | n/a | `number` | `30` | no |
| threshold | n/a | `number` | `2` | no |

## Outputs

No output.

<!--- END_TF_DOCS --->

## Authors

Module managed by [DNX Solutions](https://github.com/DNXLabs).

## License

Apache 2 Licensed. See [LICENSE](https://github.com/DNXLabs/terraform-aws-route53healthcheck/blob/master/LICENSE) for full details.
