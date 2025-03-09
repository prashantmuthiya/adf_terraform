variable "dataset_name" {
  description = "The name of the dataset."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = null
}

variable "linked_service_id" {
  description = "The ID of the linked service."
  type        = string
  default     = null
}

variable "table_name" {
  description = "The name of the SQL table."
  type        = string
  default     = null
}

variable "annotations" {
  description = "Annotations for the dataset."
  type        = list(string)
  default     = null
}

variable "dataset_description" {
  description = "A description of the dataset."
  type        = string
  default     = null
}

variable "schema_columns" {
  description = "A list of schema columns, each containing name and type."
  type = list(object({
    name = string
    type = string
  }))
  default = null
}

variable "additional_properties" {
  description = "Additional properties for the dataset."
  type        = map(string)
  default     = null
}

variable "folder" {
  description = "The folder in which the dataset is located."
  type        = string
  default     = null
}

variable "parameters" {
  description = "the parameters"
  type = map(string)
  default = null
}