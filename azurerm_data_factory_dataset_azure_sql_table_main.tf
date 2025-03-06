resource "azurerm_data_factory_dataset_azure_sql_table" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_id   = var.linked_service_id
  table               = var.table_name

  annotations         = var.annotations
  description         = var.dataset_description

  parameters = var.parameters
  schema_column {
    name = var.schema_column_name
    type = var.schema_column_type
  }

  additional_properties = var.additional_properties
  folder                = var.folder
}
