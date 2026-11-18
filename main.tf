# Identify the existing WSERS AWS resources

data "aws_caller_identity" "current" {}

data "aws_api_gateway_rest_api" "wsers" {
  name = var.api_name
}
