resource "azurerm_data_factory_linked_service_odbc" "example" {
  name                = var.name
  data_factory_id     = var.data_factory_id
  connection_string   = var.connection_string
  description         = var.description
  integration_runtime_name = var.integration_runtime_name

  basic_authentication {
    username = var.username
    password = var.password
  }

  annotations = var.annotations
  additional_properties = var.additional_properties

  parameters = var.parameters

  timeouts {
    create = var.create_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}

