# README #

This README should explain a few examples using terraform, from basic to ... (and beyond)

### 1-basic ###

The first example shows a simple block

* main
* output

How to execute

* `terraform init`
* `terraform plan`
* `terraform apply`
* to destroy:
* `terraform destroy`

### 2-vars ###

The second example implements the first example, adding some features:

* more blocks
* using variables
* adding some code
* adding dependencies
* introducing tfplan

How to execute

* `terraform init`
* `terraform plan -out=tfplan`
* `terraform apply tfplan`
* to destroy:
* `terraform plan -out=tfplan -destroy`
* `terraform apply tfplan`

### 3-vars2 ###

The third example implements the previous one, adding:

* separated files
* adding some logical
* multiplatform


How to execute

* `terraform init`
* `terraform plan -out=tfplan -input=false -var-file="pre.tfvars"`
* `terraform apply -input=false tfplan`
* to destroy:
* `terraform plan -out=tfplan -input=false -var-file="pre.tfvars" -destroy`
* `terraform apply -input=false tfplan`

### 4-lambda ###

The 4th example shows how to create a simple lambda function:

* adding tags
* adding resources
* tfstate in S3

How to execute

* `terraform init`
* `terraform plan -out=tfplan -input=false -var-file="pre.tfvars"`
* `terraform apply -input=false tfplan`
* uncomment the terraform block in main.tf
* `terraform init`
* `terraform plan -out=tfplan -input=false -var-file="pre.tfvars"`
* `terraform apply -input=false tfplan`
* to destroy:
* `terraform plan -out=tfplan -input=false -var-file="pre.tfvars" -destroy`
* `terraform apply -input=false tfplan`