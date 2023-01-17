output "resource_devops_admin_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-admin role"
  value       = module.iam_resources.resource_devops_admin_role_arn
}

output "resource_developer_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-user role"
  value       = module.iam_resources.resource_developer_role_arn
}

output "resource_pipeline_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-user role"
  value       = module.iam_resources.resource_pipeline_role_arn
}