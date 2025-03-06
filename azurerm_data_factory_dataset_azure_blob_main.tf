resource "azurerm_data_factory_dataset_azure_blob" "dataset_azure_blob" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  path      = var.path
  filename  = var.filename

  parameters = var.parameters

  additional_properties = var.additional_properties
  description           = var.description
  folder                = var.folder
}