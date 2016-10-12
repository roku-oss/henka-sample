# Terraform Gradle Plugin Sample Project

## What is it?

This project provides an example for Terraform Gradle Plugin (provide link here).

It provides a terraform script to plan creatiion of a single S3 bucket. The plugin takes the terraform script,
pulls or initializes the remote state and performs "terraform plan command".

To change its behaviour, please edit `terraform` task properties in `build.gradle`

## How do I run it?

To run the sample project:
* terraform has to be installed and available in PATH
* AWS access should be configured either through environment variables, default profile credentials or IAM profile
* you need to define two environment variables to be used by Terraform:
  * TF_VAR_aws_access_key - AWS access key for Terraform AWS provider
  * TF_VAR_aws_secret_key - AWS secret key for Terraform AWS provider
* You need to create a KMS key and obtain its ARN

The command is
```
./gradlew terraform -P tfConfS3KmsKey=<your KMS key ARN> -P tfConfS3Bucket=<your TF conf S3 bucket name> 
```

The S3 bucket name is defined in `sample_terraform_vars/test.vars`

Feel free to change it or to override it by providing the environment value `TF_VAR_s3_bucket`.

## Licensing

Gradle Terraform Plugin Sample Project is available as open source under the terms of [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0.txt) 
