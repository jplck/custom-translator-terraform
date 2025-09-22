variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
  default     = "rg-custom-translator"
}

variable "location" {
  description = "Azure region where the resources will be created"
  type        = string
  default     = "East US"
}

variable "custom_translator_name" {
  description = "Name of the Custom Translator service"
  type        = string
}

variable "sku_name" {
  description = "SKU name for the Custom Translator service"
  type        = string
  default     = "S1"

  validation {
    condition     = contains(["F0", "S1", "S2", "S3", "S4"], var.sku_name)
    error_message = "The sku_name must be one of: F0, S1, S2, S3, S4."
  }
}

variable "tags" {
  description = "A map of tags to assign to the resources"
  type        = map(string)
  default = {
    Environment = "dev"
    Purpose     = "CustomTranslator"
  }
}