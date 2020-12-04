# variables.tf

variable "workspace" {
  description = "Terraform workspace"
}

variable "account_name" {
  description = "AWS workload account name"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "ca-central-1"
}

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "ca-central-1"
}

variable "ecs_task_execution_role_name" {
  description = "ECS task execution role name"
  default     = "startupSampleEcsTaskExecutionRole"
}

variable "ecs_auto_scale_role_name" {
  description = "ECS auto scale role Name"
  default     = "startupSampleEcsAutoScaleRole"
}

variable "az_count" {
  description = "Number of AZs to cover in a given region"
  default     = "2"
}

variable "client_app_image" {
  description = "Docker image to run in the ECS cluster. _Note_: there is a blank default value, which will cause service and task resource creation to be supressed unless an image is specified."
  type        = string
  default     = ""
}

variable "client_app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 80
}

variable "client_app_count" {
  description = "Number of docker containers to run"
  default     = 2
}

variable "client_container_name" {
  description = "Client container name"
  default     = "sample-client-app"
}

variable "health_check_path" {
  default = "/"
}

variable "fargate_cpu" {
  description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
  default     = "512"
}

variable "fargate_memory" {
  description = "Fargate instance memory to provision (in MiB)"
  default     = "1024"
}

variable "db_name" {
  description = "DynamoDB DB Name"
  default     = "ssp-greetings"
}

variable "repository_name" {
  description = "Name for the container repository to be provisioned."
  type        = string
  default     = "ssp"
}

variable "budget_amount" {
  description = "The amount of spend for the budget. Example: enter 100 to represent $100"
  default     = "100"
}

variable "budget_tag" {
  description = "The Cost Allocation Tag that will be used to build the monthly budget. "
  default     = "Project=Startup Sample"
}

variable "alb_cert_domain" {
  description = "The domain of cert to use for the internal ALB"
  default     = "*.example.ca"
}
