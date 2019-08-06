# == REQUIRED VARS

variable "aws_account_id" {
  description = "AWS Account where will be created new resources"
}

variable "aws_role" {
  description = "Name of role to get access"
}

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

variable "sns-subscribe-list" {
  default = ""
  description = "email to send notifications"
}

variable "slack_endpoint" {
  default = ""
  description = "endpoint to Slack notifications chanel"
}

variable "aws_sns_topic_arn"{
  default = ""
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