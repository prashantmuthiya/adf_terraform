resource "azurerm_data_factory_linked_service_cosmosdb" "example" {
  name            = var.name
  data_factory_id = var.data_factory_id
  connection_string = var.connection_string
  account_endpoint  = var.account_endpoint
  account_key       = var.account_key
  database          = var.database

  description = var.description

  annotations = var.annotations
  additional_properties = var.additional_properties
  integration_runtime_name = var.integration_runtime_name
  parameters = var.parameters
}