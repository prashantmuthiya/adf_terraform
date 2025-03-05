resource "azurerm_data_factory_integration_runtime_azure_ssis" "ssis_runtime" {
  name                = var.name
  data_factory_id     = var.data_factory_id
  location            = var.location
  description         = var.description
  node_size           = var.node_size
  number_of_nodes     = var.number_of_nodes
  max_parallel_executions_per_node = var.max_parallel_executions_per_node

  edition             = var.edition
  license_type        = var.license_type
  
}