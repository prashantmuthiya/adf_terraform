resource "azurerm_data_factory_integration_runtime_azure" "integration_runtime_azure" {
  name                   = var.integration_runtime_name
  data_factory_id        = var.data_factory_id
  location               = var.location
  description            = var.description
  time_to_live_min       = var.time_to_live_min
  virtual_network_enabled = var.virtual_network_enabled
  cleanup_enabled        = var.cleanup_enabled
  compute_type           = var.compute_type
  core_count             = var.core_count

  dynamic "timeouts" {
    for_each = var.timeouts != null ? [var.timeouts] : []
    content {
      create = timeouts.value.create
      update = timeouts.value.update
      delete = timeouts.value.delete
    }
  }
}
