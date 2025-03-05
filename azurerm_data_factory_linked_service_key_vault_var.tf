resource "azurerm_data_factory_linked_service_key_vault" "example" {
  name            = var.name
#  resource_group_name = var.resource_group_name
  data_factory_id = var.data_factory_id
  key_vault_id    = var.key_vault_id
  description     = var.description

  integration_runtime_name = var.integration_runtime_name
}