variable "dataset_name" {
  description = "The name of the MySQL dataset."
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

variable "table_name" {
  description = "The name of the table."
  type        = string
}

variable "folder" {
  description = "The folder that contains this dataset."
  type        = string
  default     = null
}

variable "dataset_description" {
  description = "The description of the dataset."
  type        = string
  default     = null
}

variable "schema_columns" {
  description = "A list of schema columns, each with a name and type."
  type = list(object({
    name = string
    type = string
  }))
  default = []
}

variable "dataset_parameters" {
  description = "A map of parameters for the dataset."
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
