resource "azurerm_postgresql_flexible_server_firewall_rule" "testedb-fw" {
  name             = "Open-all"
  server_id        = azurerm_postgresql_flexible_server.testedb.id
  start_ip_address = "0.0.0.0"
  end_ip_address   = "255.255.255.255"
}
