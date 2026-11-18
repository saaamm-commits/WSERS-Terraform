\# WSERS – Women Safety and Emergency Response System



\## 1. Project Overview



The Women Safety and Emergency Response System (WSERS) is a cloud-based application developed using AWS serverless services. It supports user authentication, emergency contact management, safety check-ins, location capture and SOS emergency alerts.



This repository contains the Terraform Infrastructure as Code (IaC) project and supporting technical documentation for the AWS infrastructure used by WSERS.



\## 2. Project Objectives



\- Document the existing AWS infrastructure.

\- Use Terraform to describe and retrieve existing AWS resources.

\- Support infrastructure verification and repeatable configuration checks.

\- Monitor Lambda performance and application activity through Amazon CloudWatch.

\- Maintain version-controlled infrastructure documentation through Git and GitHub.



\## 3. AWS Architecture



The WSERS solution uses the following AWS services:



| AWS Service | Purpose |

|---|---|

| Amazon Cognito | User registration, login and authentication |

| Amazon API Gateway | Provides REST API endpoints |

| AWS Lambda | Executes serverless backend operations |

| Amazon DynamoDB | Stores emergency contacts and alert records |

| Amazon SNS | Sends emergency email notifications |

| Amazon CloudWatch | Provides application logs and performance metrics |



\### Application workflow



1\. Users register and log in through Amazon Cognito.

2\. Cognito authentication tokens are used when accessing protected API endpoints.

3\. API Gateway receives requests and invokes the relevant Lambda functions.

4\. Lambda functions process emergency contact and alert operations.

5\. DynamoDB stores application records.

6\. The SOS Lambda publishes emergency notifications through SNS.

7\. CloudWatch collects execution logs and performance metrics.



Refer to `ARCHITECTURE.md` for the architecture diagram.



\## 4. Application Features



\- User registration and login.

\- Cognito-based authentication.

\- Emergency contact management.

\- SOS emergency alert activation.

\- Location capture.

\- Safety check-in.

\- Emergency alert history.

\- Email notifications through Amazon SNS.



\## 5. Terraform Project Structure



| File or folder | Purpose |

|---|---|

| `provider.tf` | AWS provider and Terraform configuration |

| `variables.tf` | Configurable project variables |

| `main.tf` | AWS account and API Gateway discovery |

| `lambda.tf` | Lambda function configuration |

| `dynamodb.tf` | DynamoDB resource configuration or discovery |

| `cognito.tf` | Cognito User Pool discovery |

| `sns.tf` | SNS topic discovery |

| `outputs.tf` | Terraform output values |

| `.gitignore` | Excludes generated and local files |

| `ARCHITECTURE.md` | AWS architecture diagram |

| `CLOUDWATCH-MONITORING.md` | CloudWatch monitoring report |

| `README.md` | Project documentation |

| `lambda\_packages/` | Local Lambda deployment packages; excluded from Git |



\## 6. Prerequisites



The following tools and access are required:



\- Terraform CLI.

\- AWS CLI.

\- Git.

\- An AWS account or AWS Academy Learner Lab.

\- Access to the AWS region containing WSERS resources.



The project uses AWS region `us-east-1`.



\## 7. AWS Credentials Configuration



AWS Academy Learner Lab credentials are temporary and must be refreshed when the lab session expires.



Configure the AWS CLI using the temporary credentials supplied by the active lab session. Do not commit access keys, secret keys or session tokens to GitHub.



Verify the active AWS identity:



```powershell

aws sts get-caller-identity

```



\## 8. Terraform Initialisation and Validation



Open PowerShell in the project directory:



```powershell

cd C:\\Users\\sayam\\WSERS-Terraform

```



Initialise Terraform:



```powershell

terraform init

```



Format the configuration:



```powershell

terraform fmt

```



Validate the configuration:



```powershell

terraform validate

```





