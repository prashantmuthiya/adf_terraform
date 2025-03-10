resource "azurerm_data_factory_linked_service_synapse" "example" {
  name            = var.name
  data_factory_id = var.data_factory_id
  integration_runtime_name = var.integration_runtime_name

  key_vault_password { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.key_vault_secret_name
  }

  connection_string = var.connection_string

  parameters = var.parameters
  annotations = var.annotations
  description = var.description

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}