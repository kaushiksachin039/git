resource "azurerm_resource_group" "one" {
  name     = "two_rg"
  location = "central india"


}

resource "azurerm_storage_account" "sunday" {
  name                     = "lopjv141224"
  location                 = azurerm_resource_group.one.location
  resource_group_name      = azurerm_resource_group.one.name
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "monday" {
  name                  = "xyz"
  storage_account_name  = azurerm_storage_account.sunday.name
  container_access_type = "blob"
  depends_on            = [azurerm_storage_account.sunday]


}./