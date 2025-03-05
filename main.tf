resource "azurerm_data_factory_dataset_azure_blob" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  folder_path  = var.folder_path
  file_name    = var.file_name
  format       = var.format

  parameters = var.parameters
}