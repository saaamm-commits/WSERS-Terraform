# Retrieve existing WSERS Cognito User Pool

data "aws_cognito_user_pool" "wsers" {
  user_pool_id = "us-east-1_SVC2a3uPw"
}
