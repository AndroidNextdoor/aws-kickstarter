output "resource_devops_admin_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-devops role"
  value       = module.iam_resources.resource_devops_admin_role_arn
}

output "resource_devops_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-devops role"
  value       = module.iam_resources.resource_devops_role_arn
}

output "resource_power_user_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-power-user role"
  value       = module.iam_resources.resource_power_user_role_arn
}

output "resource_developer_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-developer role"
  value       = module.iam_resources.resource_developer_role_arn
}

output "resource_pipeline_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-limited role"
  value       = module.iam_resources.resource_pipeline_role_arn
}

output "resource_owner_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-owner role"
  value       = module.iam_resources.resource_owner_role_arn
}

output "resource_billing_role_arn" {
  description = "The ARN you need to configure your CLI access with for assuming the resource-billing role"
  value       = module.iam_resources.resource_billing_role_arn
}