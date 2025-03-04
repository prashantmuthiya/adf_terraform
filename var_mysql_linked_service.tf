variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "data_factory_name" {
  description = "The name of the Data Factory."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
}

variable "linked_service_name" {
  description = "The name of the Linked Service."
  type        = string
}

variable "description" {
  description = "Description of the Linked Service."
  type        = string
  default     = ""
}

variable "integration_runtime" {
  description = "The integration runtime to be used by the Linked Service."
  type        = string
}

variable "connection_string" {
  description = "The connection string for the MySQL Linked Service."
  type        = string
}