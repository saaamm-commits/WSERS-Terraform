

flowchart TD

&#x20;   A\["WSERS User / Frontend"] --> B\["Amazon Cognito"]

&#x20;   B --> C\["API Gateway REST API"]

&#x20;   C --> D\["Cognito Authorizer"]



&#x20;   D --> E\["Lambda Functions"]



&#x20;   E --> F\["Add Emergency Contact"]

&#x20;   E --> G\["Update Emergency Contact"]

&#x20;   E --> H\["Delete Emergency Contact"]

&#x20;   E --> I\["Get Emergency Contacts"]

&#x20;   E --> J\["Get Emergency Alerts"]

&#x20;   E --> K\["Create Emergency Alert"]



&#x20;   F --> L\[("Amazon DynamoDB WSERS")]

&#x20;   G --> L

&#x20;   H --> L

&#x20;   I --> L

&#x20;   J --> L

&#x20;   K --> L



&#x20;   K --> M\["Amazon SNS"]

&#x20;   M --> N\["Emergency Email Notifications"]



&#x20;   E --> O\["Amazon CloudWatch"]

&#x20;   O --> P\["Logs and Metrics"]



