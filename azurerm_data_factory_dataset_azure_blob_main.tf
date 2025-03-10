resource "azurerm_data_factory_dataset_azure_blob" "dataset_azure_blob" {
  name                 = var.dataset_name
  data_factory_id      = var.data_factory_id
  linked_service_name  = var.linked_service_name

  path                 = var.path
  filename             = var.filename
  parameters           = var.parameters

  description          = var.description
  folder               = var.folder
  dynamic_path_enabled = var.dynamic_path_enabled
  dynamic_filename_enabled = var.dynamic_filename_enabled

   dynamic "schema_column" {
    for_each = (var.schema_columns)
    iterator = schema_column
    content {
      name = schema_column.value["name"]
      type = schema_column.value["type"]
    }
  }
}
