module "terraform-aws-route53healthcheck" {
  source   = "git::https://github.com/DNXLabs/terraform-aws-route53healthcheck.git?ref=0.1.1"
  for_each = { for healthcheck in try(local.workspace.route53_health_check.endpoint, []) : healthcheck.hostname => healthcheck }
  # providers = {
  #   aws = aws.us-east-1
  # }

  hostname         = try(each.value.hostname, "[]")
  port             = try(each.value.port, 443)
  protocol         = try(each.value.protocol, "HTTPS")
  healthcheck_path = try(each.value.healthcheck_path, "")
  measure_latency  = try(each.value.measure_latency, true)
}