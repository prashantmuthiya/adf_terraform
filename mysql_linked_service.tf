resource "azurerm_data_factory_linked_service_mysql" "this" {
  name                = var.linked_service_name
 # resource_group_name = var.resource_group_name
 # data_factory_name   = var.data_factory_name
  data_factory_id     = var.data_factory_id
  description         = var.description
# integration_runtime = var.integration_runtime
  connection_string   = var.connection_string
}