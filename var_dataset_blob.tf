variable "linked_service_name" {
  description = "The name of the linked service for Azure Blob Storage"
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory"
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the Azure Blob dataset"
  type        = string
  default     = null
}

#module "example_storage" {
#  source = "./path-to-your-module"

#  linked_service_name = "example-linked-service"
#  data_factory_id     = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/example-rg/providers/Microsoft.DataFactory/factories/example-factory"
#  name                = "example-dataset"
#}