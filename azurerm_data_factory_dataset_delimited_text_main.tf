resource "azurerm_data_factory_dataset_delimited_text" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  azure_blob_fs_location {
    file_system = var.file_system
    path = var.folder_path
    filename    = var.filename
  }

  azure_blob_storage_location {
    container           = var.container
    path                = var.blob_path
    filename            = var.blob_filename
  }

  first_row_as_header = var.first_row_as_header
  column_delimiter    = var.column_delimiter
  row_delimiter       = var.row_delimiter
  encoding            = var.encoding
  quote_character     = var.quote_character
  escape_character    = var.escape_character
  null_value          = var.null_value
  compression_codec   = var.compression_codec
  compression_level   = var.compression_level

  dynamic "schema_column" {
    for_each = var.schema_columns != null ? var.schema_columns : []
    content {
      name = schema_column.value.name
      type = schema_column.value.type
    }
  }
}

