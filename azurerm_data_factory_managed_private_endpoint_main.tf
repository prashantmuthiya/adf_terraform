resource "azurerm_data_factory_managed_private_endpoint" "example" {
  name               = var.managed_private_endpoint_name
  data_factory_id    = var.data_factory_id
  target_resource_id = var.target_resource_id
  subresource_name   = var.subresource_name
  fqdns              = var.fqdns

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    delete = var.delete_timeout
  }
}
