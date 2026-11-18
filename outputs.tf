output "aws_account_id" {
  description = "AWS account ID"
  value       = data.aws_caller_identity.current.account_id
}

output "aws_region" {
  description = "AWS region"
  value       = var.aws_region
}

output "wsers_dynamodb_table_arn" {
  description = "WSERS DynamoDB table ARN"
 value       = aws_dynamodb_table.wsers.arn
}

output "wsers_cognito_user_pool_id" {
  description = "WSERS Cognito user pool ID"
  value       = data.aws_cognito_user_pool.wsers.id
}

output "wsers_api_id" {
  description = "WSERS API Gateway ID"
  value       = data.aws_api_gateway_rest_api.wsers.id
}

output "wsers_sns_topic_arn" {
  description = "WSERS SNS notification topic ARN"
  value       = data.aws_sns_topic.wsers_notifications.arn
}

output "wsers_lambda_arns" {
  description = "WSERS Lambda function ARNs"
  value = {
    for name, function in data.aws_lambda_function.wsers :
    name => function.arn
  }
}
