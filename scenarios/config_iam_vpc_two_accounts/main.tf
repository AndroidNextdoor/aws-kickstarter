locals {
  users_account_id     = data.aws_caller_identity.users.account_id
  resources_account_id = data.aws_caller_identity.resources.account_id
}

module "iam_users" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//iam-users"
  providers = {
    aws = aws.users
  }

  resources_account_id = local.resources_account_id
  iam_users            = var.iam_users
}

module "iam_resources" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//iam-resources"
  providers = {
    aws = aws.resources
  }

  users_account_id = local.users_account_id
}
module "config" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//config"
  providers = {
    aws = aws.resources
  }
}

module "core_vpc" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//vpc"
  providers = {
    aws = aws.resources
  }

  tags = var.tags
}
