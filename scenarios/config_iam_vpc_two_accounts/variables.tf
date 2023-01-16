variable "tags" {
  type        = map(string)
  description = "A common map of tags for all VPC resources that are created (for e.g. billing purposes)"
  default = {
    Resource = "AWS Automated Testing"
  }
}

variable "iam_users" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    SorryNotSorry = {
      groups = ["admins"]
    }
    SorryNotSorryDev = {
      groups = ["users"]
    }
  }
}
