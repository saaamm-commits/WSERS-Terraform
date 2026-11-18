# Retrieve existing WSERS SNS notification topic

data "aws_sns_topic" "wsers_notifications" {
  name = "WSERS-Emergency-Notifications"
}
