resource "azurerm_postgresql_flexible_server_database" "teste-db" {
  name      = "teste-db"
  server_id = azurerm_postgresql_flexible_server.testedb.id
  collation = "en_US.utf8"
  charset   = "utf8"
}

resource "azurerm_postgresql_flexible_server_configuration" "testedb-cfg" {
  name      = "azure.extensions"
  server_id = azurerm_postgresql_flexible_server.testedb.id
  value     = "PG_STAT_STATEMENTS,PG_BUFFERCACHE,PG_FREESPACEMAP,PG_REPACK,PAGEINSPECT,PG_VISIBILITY,PGSTATTUPLE,PG_PREWARM"
}
