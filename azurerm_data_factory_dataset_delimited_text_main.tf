resource "azurerm_data_factory_dataset_delimited_text" "example" {
  name                = var.dataset_name
  data_factory_id     = var.data_factory_id
  linked_service_name = var.linked_service_name

  column_delimiter     = var.column_delimiter
  first_row_as_header  = var.first_row_as_header
  encoding            = var.encoding
  compression_level   = var.compression_level
  compression_codec   = var.compression_codec
  null_value          = var.null_value
  escape_character    = var.escape_character
  quote_character     = var.quote_character

  azure_blob_storage_location {
    container = var.container
    path      = var.blob_path
    filename  = var.blob_filename
  }

  parameters = var.parameters

  schema_column {
    name = var.schema_column_name
    type = var.schema_column_type
  }
}