variable "dataset_name" {
  description = "The name of the dataset."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
}

variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
}

variable "column_delimiter" {
  description = "The column delimiter."
  type        = string
  default     = ","
}

variable "first_row_as_header" {
  description = "Treat the first row as a header."
  type        = bool
  default     = true
}

variable "encoding" {
  description = "The file encoding."
  type        = string
  default     = "UTF-8"
}

variable "compression_level" {
  description = "The compression level."
  type        = string
  default     = "Optimal"
}

variable "compression_codec" {
  description = "The compression codec."
  type        = string
  default     = "gzip"
}

variable "null_value" {
  description = "The character used to represent null values."
  type        = string
  default     = ""
}

variable "escape_character" {
  description = "The escape character."
  type        = string
  default     = "\\"
}

variable "quote_character" {
  description = "The character used to quote values."
  type        = string
  default     = "\""
}

variable "container" {
  description = "The name of the Azure Blob Storage container."
  type        = string
}

variable "blob_path" {
  description = "The path to the blob file."
  type        = string
}

variable "blob_filename" {
  description = "The name of the blob file."
  type        = string
}

variable "parameters" {
  description = "A map of parameters."
  type        = map(string)
  default     = {}
}

variable "schema_column_name" {
  description = "The name of the schema column."
  type        = string
  default     = "Column1"
}

variable "schema_column_type" {
  description = "The type of the schema column."
  type        = string
  default     = "String"
}

# Example usage
/*module "adf_dataset_delimited_text" {
  source = "../path/to/your/module"

  dataset_name         = "example_dataset"
  data_factory_id      = "your-data-factory-id"
  linked_service_name  = "your-linked-service"
  column_delimiter     = ","
  first_row_as_header  = true
  encoding             = "UTF-8"
  compression_level    = "Optimal"
  compression_codec    = "gzip"
  null_value           = ""
  escape_character     = "\\"
  quote_character      = "\""
  container            = "your-container-name"
  blob_path            = "your/blob/path"
  blob_filename        = "example.csv"
  parameters           = { "param1" = "value1" }
  schema_column_name   = "Column1"
  schema_column_type   = "String"
}*/

