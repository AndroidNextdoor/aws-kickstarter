variable "tags" {
  type        = map(string)
  description = "A common map of tags for all VPC resources that are created (for e.g. billing purposes)"
  default = {
    Resource = "AndroidNextdoor"
    Owner = "Andrew Nixdorf"
    Email = "nixdorfa@gmail.com"
  }
}
