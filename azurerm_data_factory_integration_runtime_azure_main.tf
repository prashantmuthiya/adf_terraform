resource "azurerm_data_factory_integration_runtime_azure" "example" {
  name                = var.integration_runtime_name
  data_factory_id     = var.data_factory_id
  location            = var.location
  description         = var.description
  time_to_live_min    = var.time_to_live_min
  node_size           = var.node_size
  number_of_nodes     = var.number_of_nodes
  max_parallel_executions_per_node = var.max_parallel_executions_per_node
  virtual_network_enabled = var.virtual_network_enabled
}