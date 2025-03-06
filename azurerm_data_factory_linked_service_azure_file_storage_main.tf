resource "azurerm_data_factory_linked_service_azure_file_storage" "example" {
  name                = var.linked_service_name
  data_factory_id     = var.data_factory_id
  connection_string   = var.connection_string
  description         = var.description
  annotations         = var.annotations
  additional_properties = var.additional_properties
  parameters          = var.parameters
  integration_runtime_name = var.integration_runtime
  host                = var.host
  file_share          = var.file_share

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}
