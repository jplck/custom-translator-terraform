output "custom_translator_endpoint" {
  description = "Endpoint of the Custom Translator service"
  value       = module.custom_translator.custom_translator_endpoint
}

output "custom_translator_name" {
  description = "Name of the Custom Translator service"
  value       = module.custom_translator.custom_translator_name
}

output "resource_group_name" {
  description = "Name of the resource group"
  value       = module.custom_translator.resource_group_name
}