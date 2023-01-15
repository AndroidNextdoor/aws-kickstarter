module "core_vpc" {
  source = "git::https://github.com/AndroidNextdoor/aws-core-modules-tf.git//vpc"

  tags = var.tags
}
