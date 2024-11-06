terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.7.0"
    }
  }
}

provider "azurerm" {
  features {}

  client_id       = "e0eed11d-46fb-4934-9fec-b73686e674de"
  client_secret   = "dY-8Q~UAGZw_Msiz2gHFvuKH7kvOYGNXfeIIFczl"
  subscription_id = "4c43da3a-cb8c-4445-b1cc-69664696569e"
  tenant_id       = "02a0b8c0-decd-4ef0-a731-50925014356b"
}


