variable "dataset_name" {
  description = "The name of the dataset."
  type        = string
  default = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default = null
}

variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default = null
}

variable "file_system" {
  description = "The file system (container) in the Azure Blob Storage."
  type        = string
  default = null
}

variable "folder_path" {
  description = "The folder path in the Azure Blob Storage."
  type        = string
  default     = null
}

variable "filename" {
  description = "The name of the file in the Azure Blob Storage."
  type        = string
  default     = null
}

variable "container" {
  description = "The container name in the Azure Blob Storage."
  type        = string
  default     = null
}

variable "blob_path" {
  description = "The path within the Azure Blob Storage."
  type        = string
  default     = null
}

variable "blob_filename" {
  description = "The filename in the Azure Blob Storage."
  type        = string
  default     = null
}

variable "identity" {
  description = "The identity block for Azure Blob Storage location."
  type = object({
    type                   = string
    user_assigned_identity = string
  })
  default = null
}

variable "first_row_as_header" {
  description = "Indicates whether the first row is a header."
  type        = bool
  default     = null
}

variable "column_delimiter" {
  description = "The character used to separate columns."
  type        = string
  default     = null
}

variable "row_delimiter" {
  description = "The character used to separate rows."
  type        = string
  default     = null
}

variable "encoding" {
  description = "The file encoding."
  type        = string
  default     = null
}

variable "quote_character" {
  description = "The character used to quote strings."
  type        = string
  default     = null
}

variable "escape_character" {
  description = "The character used to escape special characters."
  type        = string
  default     = null
}

variable "null_value" {
  description = "The string that represents null values."
  type        = string
  default     = null
}

variable "compression_codec" {
  description = "The compression codec used."
  type        = string
  default     = null
}

variable "compression_level" {
  description = "The compression level."
  type        = string
  default     = null
}

variable "schema_columns" {
  description = "A list of schema columns. Each item should have 'name' and 'type'."
  type = list(object({
    name = string
    type = string
  }))
  default = null
}

/*
# Example usage
module "adf_dataset" {
  source              = "./modules/adf_dataset"
  dataset_name        = "example_dataset"
  data_factory_id     = "your-data-factory-id"
  linked_service_name = "your-linked-service-name"
  file_system         = "your-file-system"
  folder_path         = "your/folder/path"
  filename            = "your-file-name.csv"
  container           = "your-container"
  blob_path           = "your/blob/path"
  blob_filename       = "your-blob-file.csv"
  identity = {
    type                   = "SystemAssigned"
    user_assigned_identity = "/subscriptions/your-subscription/resourceGroups/your-rg/providers/Microsoft.ManagedIdentity/userAssignedIdentities/your-identity"
  }
  first_row_as_header = true
  column_delimiter    = ","
  row_delimiter       = "\n"
  encoding            = "UTF-8"
  quote_character     = "\""
  escape_character    = "\\"
  null_value          = "NULL"
  compression_codec   = "gzip"
  compression_level   = "5"
  schema_columns = [
    { name = "column1", type = "String" },
    { name = "column2", type = "Int32" }
  ]
}
*/
