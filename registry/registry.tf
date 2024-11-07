provider "azurerm" {
  features {}
  subscription_id = "4c43da3a-cb8c-4445-b1cc-69664696569e"
}
data "azurerm_resource_group" "registry" {
  name = "registry"
}
resource "azurerm_container_registry" "tfreg" {
  name                = "terraformreg007"
  resource_group_name = data.azurerm_resource_group.registry.name
  location            = data.azurerm_resource_group.registry.location
  sku                 = "Premium"
  admin_enabled       = true
}
output "adminpwd" {
  value     = azurerm_container_registry.tfreg.admin_password
  sensitive = true
}
data "azurerm_container_registry_token" "token" {
  name                    = "irannat1"
  resource_group_name     = data.azurerm_resource_group.registry.name
  container_registry_name = azurerm_container_registry.tfreg.name
  scope_map_id            = data.azurerm_container_registry_scope_map.scope.id
}
data "azurerm_container_registry_scope_map" "scope" {
  name                    = "_repositories_pull"
  resource_group_name     = data.azurerm_resource_group.registry.name
  container_registry_name = azurerm_container_registry.tfreg.name
}
resource "azurerm_container_registry_token_password" "pwd" {
  container_registry_token_id = azurerm_container_registry_token.token.id
  password1 {
    expiry = "2024-11-22T17:57:36+08:00"
  }
}

