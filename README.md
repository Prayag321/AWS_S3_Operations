# AWS Services - README

This project involves working with various AWS services, such as IAM, S3, Lambda, EC2, RDS, DynamoDB, Data Lake, Glacier, and Redshift. Below is a brief description of the tasks:

## 1. Identity and Access Management (IAM)
- Create users, roles, and custom policies:
  - Policy 1: Full access to EC2 and all IAM services.
  - Policy 2: Full access to EC2 and read-only access to IAM users.
- Assign policies to a user group and test access via a created user.

## 2. Amazon S3
- Use Boto3 to perform CRUD operations on S3.
- Python scripts to transfer data (CSV and large files) between local and S3.
- Host a static website on S3 by enabling website hosting and configuring bucket permissions.

## 3. AWS Lambda
- Create Lambda functions to perform CRUD operations on S3 using triggers (like file uploads).

## 4. Amazon EC2
- Launch, configure, and manage EC2 instances. Refer to [Edureka EC2 Tutorial](https://medium.com/edureka/aws-ec2-tutorial-16583cc7798e).

## 5. Amazon RDS
- Setup MySQL/MSSQL RDS instances.
- Perform basic and advanced CRUD operations using Boto3 and SQL queries.
- Import/export data from MySQL/MSSQL databases.

## 6. Amazon DynamoDB
- Perform CRUD operations using Python Boto3.
- Import and export data to/from DynamoDB tables.

## 7. Data Lake and Amazon Glacier
- Understand and provision a Data Lake using S3.
- Setup Amazon Glacier for archival storage and configure lifecycle policies for data transfer.

## 8. Amazon Redshift
- Create a Redshift cluster, upload data to S3, and use the `COPY` command to load data into Redshift.
- Perform data analysis using SQL queries within Redshift.

---

Each task provides hands-on experience with different AWS services and Python (Boto3) for automation and data management.
