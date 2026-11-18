
resource "aws_cloudwatch_dashboard" "wsers" {
  dashboard_name = "WSERS-Monitoring"

  dashboard_body = jsonencode({
    widgets = [
      {
        type   = "metric"
        x      = 0
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "WSERS Lambda Invocations"
          region = var.aws_region
          period = 86400
          stat   = "Sum"

          metrics = [
            for name in var.lambda_functions :
            ["AWS/Lambda", "Invocations", "FunctionName", name]
          ]
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 0
        width  = 12
        height = 6

        properties = {
          title  = "WSERS Lambda Errors"
          region = var.aws_region
          period = 86400
          stat   = "Sum"

          metrics = [
            for name in var.lambda_functions :
            ["AWS/Lambda", "Errors", "FunctionName", name]
          ]
        }
      },
      {
        type   = "metric"
        x      = 0
        y      = 6
        width  = 12
        height = 6

        properties = {
          title  = "WSERS Lambda Duration"
          region = var.aws_region
          period = 86400
          stat   = "Average"

          metrics = [
            for name in var.lambda_functions :
            ["AWS/Lambda", "Duration", "FunctionName", name]
          ]
        }
      },
      {
        type   = "metric"
        x      = 12
        y      = 6
        width  = 12
        height = 6

        properties = {
          title  = "WSERS Lambda Throttles"
          region = var.aws_region
          period = 86400
          stat   = "Sum"

          metrics = [
            for name in var.lambda_functions :
            ["AWS/Lambda", "Throttles", "FunctionName", name]
          ]
        }
      }
    ]
  })
}
