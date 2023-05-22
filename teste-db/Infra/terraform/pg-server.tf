resource "azurerm_resource_group" "rg" {
  name     = "Automacao"
  location = "eastus"
}

resource "azurerm_postgresql_flexible_server" "testedb" {
  name                          = "testedb"
  resource_group_name           = azurerm_resource_group.rg.name
  location                      = azurerm_resource_group.rg.location
  version                       = "14"
  administrator_login           = "psqladmin"
  administrator_password        = "Stone@2023!"
  zone                          = "1"
  storage_mb                    = 32768
  sku_name                      = "B_Standard_B1ms"
  backup_retention_days         = "7"
}
