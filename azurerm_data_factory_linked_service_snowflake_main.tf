resource "azurerm_data_factory_linked_service_snowflake" "this" {
  name                     = var.name
  data_factory_id          = var.data_factory_id
  connection_string        = var.connection_string

  key_vault_password {
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.snowflake_secret_name
  }

  description              = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations              = var.annotations
  additional_properties    = var.additional_properties
}
