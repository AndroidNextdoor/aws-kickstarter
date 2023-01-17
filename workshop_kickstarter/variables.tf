variable "iam_users" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    DevOpsAdmin = {
      groups = ["DevOps"]
    }
    Developer = {
      groups = ["Developers"]
    }
    Limited-User = {
      groups = ["Limited"]
    }
  }
}

variable "iam_resources" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    DevOpsAdmin = {
      groups = ["DevOps"]
    }
    Developer = {
      groups = ["Developers"]
    }
    Limited-User = {
      groups = ["Limited"]
    }
  }
}

variable "tags" {
  type        = map(string)
  description = "A common map of tags for all VPC resources that are created (for e.g. billing purposes)"
  default = {
    Resource = "AndroidNextdoor"
    Owner = "Andrew Nixdorf"
    Email = "nixdorfa@gmail.com"
  }
}
