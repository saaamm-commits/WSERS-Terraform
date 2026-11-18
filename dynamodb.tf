# Retrieve existing WSERS DynamoDB table

data "aws_dynamodb_table" "wsers" {
  name = var.dynamodb_table_name
}
