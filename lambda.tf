# Retrieve existing WSERS Lambda functions

data "aws_lambda_function" "wsers" {
  for_each      = toset(var.lambda_functions)
  function_name = each.value
}
