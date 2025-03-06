resource "azurerm_data_factory_linked_service_azure_sql_database" "example" {
  name                = var.linked_service_name
  data_factory_id     = var.data_factory_id
  description         = var.description
  integration_runtime_name = var.integration_runtime_name

  key_vault_connection_string { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.key_vault_secret_name
  }

  parameters = var.parameters

  
}