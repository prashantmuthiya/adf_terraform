resource "azurerm_data_factory_integration_runtime_azure" "example" {
  name                = var.integration_runtime_name
  data_factory_id     = var.data_factory_id
  location            = var.location
  description         = var.description
  time_to_live_min    = var.time_to_live_min
}