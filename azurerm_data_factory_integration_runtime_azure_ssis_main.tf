resource "azurerm_data_factory_integration_runtime_azure_ssis" "ssis_runtime" {
  name                                = var.name
  data_factory_id                     = var.data_factory_id
  location                            = var.location
  description                         = var.description
  node_size                           = var.node_size
  number_of_nodes                     = var.number_of_nodes
  max_parallel_executions_per_node     = var.max_parallel_executions_per_node

  edition                             = var.edition
  license_type                        = var.license_type

  dynamic "custom_setup_script" {
    for_each = var.custom_setup_script != null ? [var.custom_setup_script] : []
    content {
      blob_container_uri = custom_setup_script.value.blob_container_uri
      sas_token          = custom_setup_script.value.sas_token
    }
  }

  dynamic "vnet_integration" {
    for_each = var.vnet_integration != null ? [var.vnet_integration] : []
    content {
      subnet_id = vnet_integration.value.subnet_id
    }
  }

  dynamic "package_store" {
    for_each = var.package_store != null ? [var.package_store] : []
    content {
      linked_service_name = package_store.value.linked_service_name
      name = package_store.value.name
    }
  }
}