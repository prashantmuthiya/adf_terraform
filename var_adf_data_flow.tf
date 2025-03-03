variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account"
}

variable "linked_service_name" {
  type        = string
  description = "The name of the linked service for Data Factory"
}

variable "data_flow_name" {
  type        = string
  description = "The name of the Data Flow"
}

variable "data_factory_id" {
  type        = string
  description = "The ID of the Data Factory"
}

variable "description" {
  type        = string
  description = "Description of the Data Flow"
}

variable "sources" {
  type = list(object({
    name                = string
    dataset_name        = string
    type                = string
    schema              = string
  }))
  description = "List of source configurations"
}

variable "sinks" {
  type = list(object({
    name                = string
    dataset_name        = string
    type                = string
    schema              = string
  }))
  description = "List of sink configurations"
}

variable "transformations" {
  type = list(object({
    name        = string
    type        = string
    description = string
  }))
  description = "List of transformations for the data flow"
}
