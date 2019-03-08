# AWS, Terraform & Codeship

This is a personal project, a learning exercise and currently in no fit state to be used by anyone, for anything, ever.  In the fullness of time I my aim is for this to become a step-by-step guide on exactly how to deploy a typical Node application to AWS.


## Requirements

Get a Node app hosted on AWS

[ ] Hosted in Docker containers in ECS
[ ] Backs onto a database (engine TBC)
[x] Remote state stored in S3
[x] State locking via DynamoDB
[ ] Provides an endpoint that exposes some data extracted from the DB
[ ] Load balanced app instances across mutliple availability zones
[ ] Load balanced DB cluster
[ ] Autoscaling groups
[ ] All instances and DB locked down with security groups
[ ] Caching layer - CloudFront?
[ ] No hard coded config
[ ] Auto-provisioned by Codeship on merge into release branch

## TODO

[ ] Host my own Node app
[ ] Create my own docker image and store it in ECR
[ ] Set up RDS cluster across availability zones
[ ] Edge with cloudfront

## Notes

### Remote State

You must create the S3 bucket you intend to use for storing state BEFORE you can run your plan.  The same also applies to the DynamoDB table used to maintain locks. This is because Terraform will attempt to access its remote state before any Terraform vars are loaded.
