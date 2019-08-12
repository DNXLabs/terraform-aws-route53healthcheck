variable "name" {
  description = "Name of app service needs to be checked"
}

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

variable "aws_sns_topic_arn"{
  default = ""
}

variable "protocol"{
  default = "HTTP"
}     

variable "threshold" {
  default = 1
}

variable "period" {
  default = 60
}

variable "time_request" {  
  default = 30
}

variable "failure_threshold" {
  default = 2
}