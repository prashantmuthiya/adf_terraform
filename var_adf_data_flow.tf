variable "resource_group_name" {
  type        = string
  description = "The name of the resource group"
  default = "rg"
}

variable "location" {
  type        = string
  description = "Azure region for the resources"
  default = "uk"
}

variable "storage_account_name" {
  type        = string
  description = "The name of the Azure Storage Account"
  default = "st"
}

variable "linked_service_name" {
  type        = string
  description = "The name of the linked service for Data Factory"
  default = "null"
}

variable "data_flow_name" {
  type        = string
  description = "The name of the Data Flow"
  default = "null"
}

variable "data_factory_id" {
  type        = string
  description = "The ID of the Data Factory"
  default = "null"
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
  default = [ {
    name = "s"
    dataset_name = "n"
    schema = "sc"
     type = "t"
  } ]
}

variable "sinks" {
  type = list(object({
    name                = string
    dataset_name        = string
    type                = string
    schema              = string
  }))
  description = "List of sink configurations"
  default = [ {
    dataset_name = "da"
    name = "n"
    schema = "sch"
    type = "ty"
  } ]
}

variable "transformations" {
  type = list(object({
    name        = string
    type        = string
    description = string
  }))
  description = "List of transformations for the data flow"
  default = [ {
    description = "d"
    name = "na"
    type = "tyy"
  } ]
}
