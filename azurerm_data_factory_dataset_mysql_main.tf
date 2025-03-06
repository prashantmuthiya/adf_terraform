resource "azurerm_data_factory_dataset_mysql" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name
  table_name          = var.table_name

  description = var.dataset_description

  schema_column { 
    name = var.schema_column_name
    type = var.schema_column_type
  }

  parameters = var.dataset_parameters

  annotations = var.dataset_annotations

  additional_properties = var.dataset_additional_properties

  dynamic "schema_column" {
    for_each = var.schema_columns
    content {
      name = schema_column.value["name"]
      type = schema_column.value["type"]
    }
  }
}