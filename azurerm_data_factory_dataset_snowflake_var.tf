variable "dataset_name" {
  description = "The name of the Snowflake dataset."
  type        = string
  default     = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which the dataset should be created."
  type        = string
  default     = "value"
}

variable "linked_service_name" {
  description = "The name of the linked service used to connect to Snowflake."
  type        = string
  default     = "value"
}

variable "schema" {
  description = "The schema name in Snowflake."
  type        = string
  default = "value"
}

variable "table_name" {
  description = "The name of the table in Snowflake."
  type        = string
  default = "value"
}

variable "folder" {
  description = "The folder that this Dataset is in. If not specified, the Dataset will appear at the root level."
  type        = string
  default     = null
}

variable "description" {
  description = "A description of the Dataset."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A map of parameters to pass to the Dataset."
  type        = map(string)
  default     = {}
}

variable "annotations" {
  description = "List of annotations for the Dataset."
  type        = list(string)
  default     = []
}

variable "column_name" {
  description = "The name of the column."
  type        = string
  default     = null
}

variable "column_type" {
  description = "The data type of the column."
  type        = string
  default     = null
}