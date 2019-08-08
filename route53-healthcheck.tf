resource "aws_route53_health_check" "default" {
  reference_name                  = "${var.name}"
  fqdn                            = "${var.hostname}"
  port                            = "${var.port}"
  type                            = "${var.protocol}"
  resource_path                   = "${var.healthcheck_path}"
  failure_threshold               = "2"
  request_interval                = "${var.time_request}"
  #insufficient_data_health_status = "Healthy"
  
  tags = {
    url = "${var.hostname}"
  }

}


