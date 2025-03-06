resource "azurerm_data_factory_linked_service_azure_sql_database" "example" {
  name                        = var.linked_service_name
  data_factory_id             = var.data_factory_id
  description                 = var.description
  integration_runtime_name    = var.integration_runtime_name
  connection_string           = var.connection_string 

  key_vault_connection_string { 
    linked_service_name = var.key_vault_linked_service_name
    secret_name         = var.key_vault_secret_name
  }

  parameters = var.parameters

  annotations = var.annotations
  additional_properties = var.additional_properties

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}