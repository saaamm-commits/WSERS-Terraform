# Manage the existing WSERS SNS notification topic

resource "aws_sns_topic" "wsers_notifications" {
  name = "WSERS-Emergency-Notifications"

  lifecycle {
    prevent_destroy = true
  }
}