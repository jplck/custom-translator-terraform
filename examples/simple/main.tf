terraform {
  required_version = ">= 1.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

module "custom_translator" {
  source = "../../"

  resource_group_name    = var.resource_group_name
  location              = var.location
  custom_translator_name = var.custom_translator_name
  sku_name              = var.sku_name
  tags                  = var.tags
}