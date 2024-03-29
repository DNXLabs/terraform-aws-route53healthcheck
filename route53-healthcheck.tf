resource "aws_route53_health_check" "default" {
  fqdn              = var.hostname
  port              = var.port
  type              = var.protocol
  resource_path     = var.healthcheck_path
  failure_threshold = var.failure_threshold
  request_interval  = var.request_interval
  measure_latency   = var.measure_latency
  #insufficient_data_health_status = "Healthy"
  # reference_name    = var.name

  tags = {
    Name = var.hostname
  }
}