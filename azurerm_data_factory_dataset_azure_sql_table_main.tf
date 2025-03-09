resource "azurerm_data_factory_dataset_azure_sql_table" "dataset_azure_sql_table" {
  name              = var.dataset_name
  data_factory_id   = var.data_factory_id
  linked_service_id = var.linked_service_id
  table             = var.table_name

  annotations = var.annotations
  description = var.dataset_description

  dynamic "schema_column" {
    for_each = var.schema_columns != null ? var.schema_columns : []
    content {
      name = schema_column.value.name
      type = schema_column.value.type
    }
  }

  additional_properties = var.additional_properties
  folder                = var.folder
}

