variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "rg"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = "id"
}

variable "linked_service_name" {
  description = "The name of the Linked Service."
  type        = string
  default     = "name"
}

variable "description" {
  description = "Description of the Linked Service."
  type        = string
  default     = ""
}

variable "integration_runtime" {
  description = "The integration runtime to be used by the Linked Service."
  type        = string
  default     = "ir"
}

variable "connection_string" {
  description = "The connection string for the MySQL Linked Service."
  type        = string
  default     = "connection_string"
}