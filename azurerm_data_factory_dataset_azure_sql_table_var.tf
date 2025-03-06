variable "dataset_name" {
  description = "The name of the Data Factory Dataset."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "linked_service_id" {
  description = "The name of the linked service to use for this dataset."
  type        = string
  default     = ""
}

variable "table_name" {
  description = "The name of the table in the Azure SQL Database."
  type        = string
  default     = ""
}

variable "annotations" {
  description = "List of annotations for the dataset."
  type        = list(string)
  default     = []
}

variable "dataset_description" {
  description = "The description of the dataset."
  type        = string
  default     = ""
}

variable "parameters" {
  description = "A map of parameters to associate with the dataset."
  type        = map(string)
  default     = {}
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

variable "additional_properties" {
  description = "A map of additional properties for the dataset."
  type        = map(string)
  default     = {}
}

variable "folder" {
  description = "The folder that this dataset is in."
  type        = string
  default     = ""
}