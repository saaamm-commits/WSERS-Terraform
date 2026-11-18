\# WSERS – Women Safety and Emergency Response System



\## 1. Project Overview



WSERS is a cloud-based Women Safety and Emergency Response System developed using AWS serverless services. It provides user authentication, emergency contact management, safety check-ins and SOS emergency alerts.



This repository contains the Terraform Infrastructure as Code (IaC) project for documenting and automating the AWS infrastructure used by WSERS.



\## 2. AWS Architecture



The system uses the following AWS services:



\- Amazon Cognito – User authentication and registration.

\- Amazon API Gateway – REST API endpoints.

\- AWS Lambda – Serverless backend processing.

\- Amazon DynamoDB – Emergency contact and alert data storage.

\- Amazon SNS – Emergency notification delivery.

\- Amazon CloudWatch – Logging and monitoring.



\## 3. Application Features



\- User registration and login.

\- Secure authentication.

\- Emergency contact management.

\- SOS emergency alert activation.

\- Location capture.

\- Safety check-in.

\- Emergency alert history.

\- Email notifications.



\## 4. Terraform Project Structure



| File | Purpose |

|---|---|

| provider.tf | AWS provider configuration |

| variables.tf | Project variables |

| main.tf | AWS account and API discovery |

| lambda.tf | Existing Lambda function discovery |

| dynamodb.tf | DynamoDB discovery |

| cognito.tf | Cognito discovery |

| sns.tf | SNS discovery |

| outputs.tf | Terraform outputs |

| .gitignore | Excludes sensitive and generated files |



\## 5. Prerequisites



\- Terraform installed.

\- AWS CLI installed.

\- AWS Academy Learner Lab access.

\- Git installed.

\- GitHub account.



\## 6. Initialisation and Validation



Run the following commands from the project directory:



```powershell

terraform init

terraform fmt

terraform validate

terraform plan

