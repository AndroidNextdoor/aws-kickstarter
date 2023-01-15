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
    SorryNotSorry4Partying = {
      groups = ["service_users"]
    }
  }
}
