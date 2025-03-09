resource "azurerm_data_factory_linked_service_azure_file_storage" "this" {
  name                      = var.linked_service_name
  data_factory_id           = var.data_factory_id
  connection_string         = var.connection_string
  description               = var.description
  annotations               = var.annotations
  additional_properties     = var.additional_properties
  parameters                = var.parameters
  integration_runtime_name  = var.integration_runtime
  host                      = var.host
  file_share                = var.file_share
  user_id             = var.key_vault_user_id

  key_vault_password {
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.key_vault_secret_name
    
  }

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}
