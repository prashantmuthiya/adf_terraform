variable "dataset_name" {
  description = "The name of the MySQL dataset."
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

variable "table_name" {
  description = "The table name in the MySQL database."
  type        = string
  default = ""
}

variable "dataset_description" {
  description = "The description of the dataset."
  type        = string
  default     = ""
}

variable "schema_column_name" {
  description = "The name of the schema column."
  type        = string
  default     = ""
}

variable "schema_column_type" {
  description = "The type of the schema column."
  type        = string
  default     = ""
}

variable "dataset_parameters" {
  description = "A map of parameters to be associated with the dataset."
  type        = map(string)
  default     = {}
}

variable "dataset_annotations" {
  description = "A list of annotations for the dataset."
  type        = list(string)
  default     = []
}

variable "dataset_additional_properties" {
  description = "A map of additional properties for the dataset."
  type        = map(string)
  default     = {}
}

variable "schema_columns" {
  description = "A list of schema columns, each containing name and type."
  type        = list(object({
    name = string
    type = string
  }))
  default = []
}