output "function_app" {
  description = "The created Linux function app"
  value       = azurerm_linux_function_app.function
}

output "resource_group" {
  description = "Resource group of all the resources created by this module"
  value       = azurerm_resource_group.function
}

output "service_plan" {
  description = "Service Plan used by the function"
  value       = azurerm_service_plan.function
}

output "storage_account" {
  description = "Storage account used by the function"
  value       = azurerm_storage_account.function
}
