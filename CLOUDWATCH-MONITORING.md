\# WSERS CloudWatch Monitoring Report



\## 1. Overview



Amazon CloudWatch was used to monitor the six AWS Lambda functions supporting the Women Safety and Emergency Response System (WSERS).



The monitoring review covered the available historical CloudWatch datapoints between 20 August and 19 November 2026.



\## 2. Monitoring Results



| Lambda Function | Invocations | Errors | Throttles |

|---|---:|---:|---:|

| AddEmergencyContact | 10 | 0 | 0 |

| DeleteEmergencyContact | 14 | 0 | 0 |

| UpdateEmergencyContact | 12 | 0 | 0 |

| GetEmergencyContacts | 55 | 0 | 0 |

| GetEmergencyAlerts | 28 | 0 | 0 |

| CreateEmergencyAlert | 36 | 0 | 0 |

| \*\*Total\*\* | \*\*155\*\* | \*\*0\*\* | \*\*0\*\* |



\## 3. SOS Lambda Performance



The WSERS-CreateEmergencyAlert function recorded 36 invocations, zero errors and zero throttles.



The observed average execution durations ranged from approximately 620.64 ms to 956.53 ms across the four dates with available duration data. The highest recorded duration was 1,228.89 ms.



The configured Lambda timeout is three seconds.



\## 4. Monitoring and Service Management



CloudWatch provides visibility into:

\- Lambda invocation activity.

\- Function execution errors.

\- Throttling events.

\- Execution duration.

\- Application logs.



These metrics support operational monitoring, incident investigation and service performance reviews.



\## 5. Conclusion



The available historical monitoring data shows 155 Lambda invocations across the six WSERS functions, with zero recorded errors and zero throttles.



The results provide evidence of successful execution during the observed periods. Continued monitoring is recommended to identify future performance issues and service interruptions.

