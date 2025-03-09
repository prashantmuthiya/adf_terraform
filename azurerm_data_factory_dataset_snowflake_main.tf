resource "azurerm_data_factory_dataset_snowflake" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  schema_name        = var.schema
  table_name         = var.table_name
  folder             = var.folder
  description        = var.description

  parameters = var.parameters

  annotations = var.annotations

  dynamic "schema_column" {
    for_each = var.schema_columns
    content {
      name      = schema_column.value.name
      type      = schema_column.value.type
      precision = schema_column.value.precision
      scale     = schema_column.value.scale
    }
  }

  timeouts {
    create = var.create_timeout
    read   = var.read_timeout
    update = var.update_timeout
    delete = var.delete_timeout
  }
}
