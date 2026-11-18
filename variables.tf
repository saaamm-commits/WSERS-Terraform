variable "aws_region" {
  description = "AWS region hosting WSERS"
  type        = string
  default     = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "Existing WSERS DynamoDB table"
  type        = string
  default     = "WSERS"
}

variable "cognito_user_pool_name" {
  description = "Existing WSERS Cognito User Pool"
  type        = string
  default     = "WSERS-User-Pool"
}

variable "api_name" {
  description = "Existing WSERS REST API"
  type        = string
  default     = "WSERS-API"
}

variable "lambda_functions" {
  description = "Existing WSERS Lambda functions"
  type        = list(string)

  default = [
    "WSERS-AddEmergencyContact",
    "WSERS-DeleteEmergencyContact",
    "WSERS-UpdateEmergencyContact",
    "WSERS-GetEmergencyContacts",
    "WSERS-GetEmergencyAlerts",
    "WSERS-CreateEmergencyAlert"
  ]
}
