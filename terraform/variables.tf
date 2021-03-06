variable "aws_region" {
  description = "The AWS region our infrastructure is created in"
  default     = "eu-west-2"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "bradfordhamilton/crystal_blockchain:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 3
}

variable "ecs_autoscale_role" {
  description = "Role arn for the ecsAutocaleRole"
  default     = "arn:aws:iam::067411311679:role/aws-service-role/ecs.amazonaws.com/AWSServiceRoleForECS"
}

variable "ecs_task_execution_role" {
  description = "Role arn for the ecsTaskExecutionRole"
  default     = "arn:aws:iam::067411311679:role/ecsTaskExecutionRole"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision"
  default     = "1024"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision"
  default     = "2048"
}
