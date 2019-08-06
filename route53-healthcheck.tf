resource "aws_route53_health_check" "default" {
  reference_name    = "${var.hostname}"
  fqdn              = "${var.hostname}"
  port              = "${var.port}"
  type              = "HTTP"
  resource_path     = "${var.healthcheck_path}"
  failure_threshold = "2"
  request_interval  = "${var.time_request}"
  
  tags = {
    name = "route53healthcheck/${var.hostname}"
  }

}


