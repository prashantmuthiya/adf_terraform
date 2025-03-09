resource "azurerm_data_factory_linked_service_azure_blob_storage" "example" {
  name            = var.linked_service_name
  data_factory_id = var.data_factory_id
  description     = var.description

  connection_string_insecure = var.connection_string_insecure

  key_vault_sas_token { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.secret
  }

  integration_runtime_name = var.integration_runtime_name

  additional_properties = var.additional_properties

  annotations = var.annotations

  parameters = var.parameters

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}