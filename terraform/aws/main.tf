provider "aws" {
  region  = var.aws_region
  version = "~> 3.11"

  assume_role {
    role_arn = "arn:aws:iam::${var.target_aws_account_id[var.target_env]}:role/BCGOV_${var.target_env}_Automation_Admin_Role"
  }
}

locals {
  //Put all common tags here
  common_tags = {
    Project     = "Startup Sample"
    Environment = "Development"
  }
  create_ecs_service = var.client_app_image == "" ? 0 : 1
}
