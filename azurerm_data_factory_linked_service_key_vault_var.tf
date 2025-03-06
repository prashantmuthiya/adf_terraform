resource "azurerm_data_factory_linked_service_key_vault" "this" {
  name                = var.name
  data_factory_id     = var.data_factory_id
  key_vault_id        = var.key_vault_id
  description         = var.description

  integration_runtime_name = var.integration_runtime_name
}