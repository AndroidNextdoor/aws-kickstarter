variable "iam_users" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    Owner = {
      groups = ["Owner"]
    }
    DevOpsAdmin = {
      groups = ["DevOps"]
    }
    PowerUser = {
      groups = ["PowerUsers"]
    }
    Developer = {
      groups = ["Developers"]
    }
    Billing = {
      groups = ["Billing"]
    }
    PipelineUser = {
      groups = ["Pipeline"]
    }
  }
}

variable "iam_resources" {
  type        = map(map(list(string)))
  description = "A list of users you want to create inside the \"users\" account"
  default = {
    Owner = {
      groups = ["Owner"]
    }
    DevOpsAdmin = {
      groups = ["DevOps"]
    }
    Developer = {
      groups = ["Developers"]
    }
    PowerUser = {
      groups = ["PowerUsers"]
    }
    PipelineUser = {
      groups = ["Pipeline"]
    }
    Billing = {
      groups = ["Billing"]
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
