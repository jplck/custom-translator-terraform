output "resource_group_name" {
  description = "Name of the resource group"
  value       = azurerm_resource_group.main.name
}

output "resource_group_id" {
  description = "ID of the resource group"
  value       = azurerm_resource_group.main.id
}

output "custom_translator_id" {
  description = "ID of the Custom Translator service"
  value       = azurerm_cognitive_account.custom_translator.id
}

output "custom_translator_name" {
  description = "Name of the Custom Translator service"
  value       = azurerm_cognitive_account.custom_translator.name
}

output "custom_translator_endpoint" {
  description = "Endpoint of the Custom Translator service"
  value       = azurerm_cognitive_account.custom_translator.endpoint
}

output "custom_translator_primary_access_key" {
  description = "Primary access key for the Custom Translator service"
  value       = azurerm_cognitive_account.custom_translator.primary_access_key
  sensitive   = true
}

output "custom_translator_secondary_access_key" {
  description = "Secondary access key for the Custom Translator service"
  value       = azurerm_cognitive_account.custom_translator.secondary_access_key
  sensitive   = true
}