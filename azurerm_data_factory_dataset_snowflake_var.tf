variable "dataset_name" {
  description = "The name of the Snowflake dataset."
  type        = string
  default = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default = ""
}

variable "linked_service_name" {
  description = "The name of the linked service."
  type        = string
  default = ""
}

variable "schema" {
  description = "The schema name in Snowflake."
  type        = string
  default = ""
}

variable "table_name" {
  description = "The table name in Snowflake."
  type        = string
  default = ""
}

variable "folder" {
  description = "The folder path in the Data Factory."
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the dataset."
  type        = string
  default     = null
}

variable "parameters" {
  description = "Parameters for the dataset."
  type        = map(string)
  default     = null
}

variable "annotations" {
  description = "Annotations for the dataset."
  type        = list(string)
  default     = null
}

variable "schema_columns" {
  description = "A list of schema columns with name, type, precision, and scale."
  type = list(object({
    name      = string
    type      = string
    precision = number
    scale     = number
  }))
  default = []
}

variable "create_timeout" {
  description = "Timeout for creating the dataset."
  type        = string
  default     = "30m"
}

variable "read_timeout" {
  description = "Timeout for reading the dataset."
  type        = string
  default     = "5m"
}

variable "update_timeout" {
  description = "Timeout for updating the dataset."
  type        = string
  default     = "30m"
}

variable "delete_timeout" {
  description = "Timeout for deleting the dataset."
  type        = string
  default     = "30m"
}

/*
// Example usage
module "snowflake_dataset" {
  source = "./path/to/your/module"

  dataset_name        = "example_dataset"
  data_factory_id     = "example_data_factory_id"
  linked_service_name = "example_linked_service"
  schema              = "example_schema"
  table_name          = "example_table"
  folder              = "example/folder"
  description         = "Example description"

  parameters = {
    param1 = "value1"
    param2 = "value2"
  }

  annotations = ["example_annotation"]

  schema_columns = [
    { name = "column1", type = "String", precision = 10, scale = 2 },
    { name = "column2", type = "Int", precision = 5, scale = 0 }
  ]

  create_timeout = "30m"
  read_timeout   = "5m"
  update_timeout = "30m"
  delete_timeout = "30m"
}
*/
