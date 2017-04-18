# Henka Sample Project

## What is it?

This project provides an example for [Henka](https://github.com/rokudev/henka/).

It provides a terraform script to plan creatiion of a single S3 bucket. The plugin installs Terraform, takes the terraform script,
initializes a remote backend and performs "terraform plan" command.

To change its behaviour, please edit `terraform` task properties in `build.gradle`

## How do I run it?

To run the sample project:
* AWS access should be configured either through environment variables, default profile credentials or IAM profile
* you need to define two environment variables to be used by Terraform:
  * TF_VAR_aws_access_key - AWS access key for Terraform AWS provider
  * TF_VAR_aws_secret_key - AWS secret key for Terraform AWS provider
* You need to create a KMS key and obtain its ARN

The command is
```
./gradlew terraform -P  tfInitParams="-input=false -backend-config=<your_S3_bucket> -backend-config=key=<your_S3_key> -backend-config=kms_key_id=<your_KMS_key_ARN> -force-copy"
```

The S3 bucket name is defined in `sample_terraform_vars/test.vars`

Feel free to change it or to override it by providing the environment value `TF_VAR_s3_bucket`.

## Licensing

Henka Sample Project is available as open source under the terms of [Apache 2.0 license](http://www.apache.org/licenses/LICENSE-2.0.txt) 

## Contributing

When submitting a PR, please fill in and submit an appropriate Software Grant & Contributor License Agreement:
* [Individual Contributor License Agreement](https://raw.githubusercontent.com/rokudev/henka-sample/master/Roku%20ICLA.txt)
* or [Software Grant and Corporate Contributor License Agreement](https://raw.githubusercontent.com/rokudev/henka-sample/master/Roku%20CCLA.txt)

