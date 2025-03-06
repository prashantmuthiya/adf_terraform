resource "azurerm_data_factory_dataset_snowflake" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  schema_name             = var.schema
  table_name         = var.table_name
  folder             = var.folder
  description        = var.description

  parameters = var.parameters

  annotations = var.annotations

  schema_column {
    name = var.column_name
    type = var.column_type
  }
}