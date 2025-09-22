variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-custom-translator-example"
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "custom_translator_name" {
  description = "Name of the Custom Translator service"
  type        = string
  default     = "ct-example-001"
}

variable "sku_name" {
  description = "SKU name for the Custom Translator service"
  type        = string
  default     = "S1"
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Environment = "example"
    Purpose     = "CustomTranslator"
    Example     = "simple"
  }
}