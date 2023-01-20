/**
* 
* This will create the following groups with MFA Policy Enabled: "DevOps", "Developer", "Owner" & "Billing".
* It will also create the following groups with MFA Policy Disabled: "DevOpsAdmin" & "PowerUser".
* For more options you can set here please [refer to the module documentation](https://github.com/AndroidNextdoor/aws-core-modules-tf).
*
*/

module "iam_users" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//iam-users"

  iam_users = var.iam_users
}

module "iam_resources" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//iam-resources"
}

module "core_vpc" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//vpc"

  tags = var.tags
}
