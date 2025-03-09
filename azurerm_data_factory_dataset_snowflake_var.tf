variable "dataset_name" {
  description = "The name of the Snowflake dataset."
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

variable "schema" {
  description = "The schema name in Snowflake."
  type        = string
}

variable "table_name" {
  description = "The table name in Snowflake."
  type        = string
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
