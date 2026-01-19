terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "177162d2-442f-4873-adc5-638825d5f936"
}
