resource "azurerm_data_factory_linked_service_azure_blob_storage" "this" {
  name                = var.linked_service_name
  connection_string   = var.connection_string
  data_factory_id     = var.data_factory_id
}

resource "azurerm_data_factory_dataset_azure_blob" "this" {
  name                = var.name
  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.this.name
  data_factory_id     = var.data_factory_id
}