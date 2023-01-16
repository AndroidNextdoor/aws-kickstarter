/**
* 
* This will create two groups, "admins" and "users" and let them assume the roles "resource-admin" or "resource-user" in the _same_ account, but with multi-factor authentication
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
