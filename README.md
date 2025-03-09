# kebin-learning-terraform

## Setup AWS
I assume you have an AWS free-tier account. Here is what you need to create a role to 
control your AWS. 
### Refresh your AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN
export $(printf "AWS_ACCESS_KEY_ID=%s AWS_SECRET_ACCESS_KEY=%s AWS_SESSION_TOKEN=%s" \$(aws sts assume-role \--role-arn arn:aws:iam::YOUIAMROLE:role/YOURAWSROLE \
--external-id YOUREXTERNALID \
--role-session-name YOURAWSSESSION \
--query "Credentials.[AccessKeyId,SecretAccessKey,SessionToken]" \
--output text))

## To deploy to aws:
1. Make sure you are on aws region us-east-2. If not, you need to update variables.tf 
```variable "aws_region"```
2. make sure you have terraform installed.
3. unset AWS_SESSION_TOKEN AWS_ACCESS_KEY_ID AWS_SECRET_ACCESS_KEY 
4. export AWS_PROFILE=kebin-devops 
5. run the long command to reset AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY, and AWS_SESSION_TOKEN
6. terraform init
7. terraform validate
8. terraform plan
9. terraform apply

Now, you have an AWS VPC with two public subnets, two private subnets, and an EC2 instance running linux. 


