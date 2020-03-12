resource "aws_cloudwatch_metric_alarm" "health_check" {
  alarm_name          = "route53-healthcheck/${var.name}"
  metric_name         = "HealthCheckStatus"
  comparison_operator = "LessThanThreshold"
  evaluation_periods  = "2"
  period              = var.period
  statistic           = "Minimum"
  threshold           = var.threshold
  unit                = "None"
  namespace           = "AWS/Route53"

  dimensions = {
    HealthCheckId = aws_route53_health_check.default.id
  }

  alarm_description         = "This metric monitors whether the service custumer is down or not."
  alarm_actions             = [var.aws_sns_topic_arn]
  insufficient_data_actions = [var.aws_sns_topic_arn]

  treat_missing_data = "breaching"
  depends_on         = ["aws_route53_health_check.default"]
}
