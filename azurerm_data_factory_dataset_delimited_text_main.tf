resource "azurerm_data_factory_dataset_delimited_text" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  column_delimiter     = var.column_delimiter
  first_row_as_header  = var.first_row_as_header
  encoding            = var.encoding

  dynamic "azure_blob_storage_location" {
    for_each = var.azure_blob_storage_location != null ? [var.azure_blob_storage_location] : []
    content {
      container = azure_blob_storage_location.value.container
      path      = azure_blob_storage_location.value.path
      filename  = azure_blob_storage_location.value.filename
    }
  }

  dynamic "compression" {
    for_each = var.compression != null ? [var.compression] : []
    content {
      level  = compression.value.level
      codec  = compression.value.codec
    }
  }

  null_value        = var.null_value
  escape_character  = var.escape_character
  quote_character   = var.quote_character

  parameters = var.parameters

  dynamic "schema_column" {
    for_each = var.schema_columns
    content {
      name = schema_column.value.name
      type = schema_column.value.type
    }
  }
}
