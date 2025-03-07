variable "dataset_name" {
  description = "The name of the dataset."
  type        = string
  default = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default = "value"
}

variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default = "value"
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

variable "azure_blob_storage_location" {
  description = "The Azure Blob Storage location details."
  type = object({
    container = string
    path      = string
    filename  = string
  })
  default = null
}

variable "compression" {
  description = "Compression settings."
  type = object({
    level = string
    codec = string
  })
  default = null
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

variable "parameters" {
  description = "A map of parameters."
  type        = map(string)
  default     = {}
}

variable "schema_columns" {
  description = "A list of schema columns."
  type = list(object({
    name = string
    type = string
  }))
  default = [
    {
      name = "Column1"
      type = "String"
    }
  ]
}

/*
# Example usage
module "adf_dataset_delimited_text" {
  source = "../path/to/your/module"

  dataset_name         = "example_dataset"
  data_factory_id      = "your-data-factory-id"
  linked_service_name  = "your-linked-service"
  column_delimiter     = ","
  first_row_as_header  = true
  encoding             = "UTF-8"
  azure_blob_storage_location = {
    container = "your-container-name"
    path      = "your/blob/path"
    filename  = "example.csv"
  }
  compression = {
    level = "Optimal"
    codec = "gzip"
  }
  null_value           = ""
  escape_character     = "\\"
  quote_character      = "\""
  parameters           = { "param1" = "value1" }
  schema_columns       = [
    { name = "Column1", type = "String" },
    { name = "Column2", type = "Int" }
  ]
}*/
