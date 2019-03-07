# Terraform Practice

## Requirements

Get a Node app hosted on AWS

* Hosted in Docker containers in ECS
* Backs onto a MySQL database
* Remote state stored in S3
* State locking
* Provides an endpoint that exposes some data extracted from the DB
* Load balanced app instances across mutliple availability zones
* Load balanced DB cluster
* Autoscaling groups
* All instances and DB locked down with security groups
* Caching layer - CloudFront
* No hard coded config
* Auto-provisioned by Codeship on merge into release branch

## TODO

* Host my own Node app
* Create my own docker image and store it in ECR
* Set up RDS cluster across availability zones
* Edge with cloudfront

## Notes

### Remote State

You must create the S3 bucket you intend to use for storing state BEFORE you can run your plan.  The same also applies to the DynamoDB table used to maintain locks.
