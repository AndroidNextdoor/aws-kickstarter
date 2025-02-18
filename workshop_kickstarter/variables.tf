variable "iam_users" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    "andrew.nixdorf+admin@gmail.com" = {
      groups = ["DevOpsAdmins"]
    }
    "andrew.nixdorf+devops@gmail.com" = {
      groups = ["DevOps"]
    }
    "andrew.nixdorf+poweruser@gmail.com" = {
      groups = ["PowerUsers"]
    }
    "andrew.nixdorf+developer@gmail.com" = {
      groups = ["Developers"]
    }
    "andrew.nixdorf+owner@gmail.com" = {
      groups = ["Owner"]
    }
    "andrew.nixdorf+billing@gmail.com" = {
      groups = ["Billing"]
    }
    "andrew.nixdorf+pipeline@gmail.com" = {
      groups = ["Pipeline"]
    }
  }
}

variable "tags" {
  type        = map(string)
  description = "A common map of tags for all VPC resources that are created (for e.g. billing purposes)"
  default = {
    Resource = "AndroidNextdoor"
    Owner = "Andrew Nixdorf"
    Email = "andrew.nixdorf@gmail.com"
  }
}
