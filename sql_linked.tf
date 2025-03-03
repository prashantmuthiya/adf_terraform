resource "azurerm_data_factory_linked_service_azure_sql_database" "example" {
  name            = "example-sql-linked-service"
  data_factory_id = var.azurerm_data_factory

  key_vault_connection_string {
    linked_service_name = azurerm_data_factory_linked_service_key_vault.example.name
    secret_name          = var.key_vault_secret_name
  }
}


resource "azurerm_data_factory_linked_service_key_vault" "example" {
  name            = "adf"
  data_factory_id = var.azurerm_data_factory
  key_vault_id    = var.key_vaults_id

}
