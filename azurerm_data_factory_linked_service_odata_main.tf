resource "azurerm_data_factory_linked_service_odata" "example" {
  name                    = var.odata_linked_service_name
  data_factory_id         = var.data_factory_id
  url                     = var.url

   basic_authentication {
    username = var.username
    password = var.password
  }

  description             = var.description
  integration_runtime_name = var.integration_runtime_name
  annotations             = var.annotations
  parameters              = var.parameters
  additional_properties   = var.additional_properties

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}