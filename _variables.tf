# variable "name" {
#   description = "Name of app service needs to be checked"
# }

variable "port" {
  default     = "80"
  description = "Port for target check"
}

variable "hostname" {
  description = "app Hostname to check"
}

variable "healthcheck_path" {
  default = "/"
}

variable "aws_sns_topic_arn" {
  default = ""
}

variable "protocol" {
  default = "HTTP"
}

variable "threshold" {
  default = 2
}

variable "period" {
  default = 60
}

variable "request_interval" {
  default = 30
}

variable "failure_threshold" {
  default = 3
}

variable "measure_latency" {
  type        = bool
  default     = false
  description = "Latency between health checkers in multiple AWS regions and your endpoint and to display CloudWatch latency graphs in the Route 53 console"
}

variable "cloudwatch_alarms_enabled" {
  type    = bool
  default = false
}