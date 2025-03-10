variable "odata_linked_service_name" {
  description = "The name of the OData linked service."
  type        = string
  default     = null
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the linked service."
  type        = string
  default     = null
}

variable "url" {
  description = "The URL of the OData endpoint."
  type        = string
  default     = null
}

variable "basic_authentication" {
  description = "The basic authentication settings for the OData linked service, including username and password."
  type        = object({
    username = string
    password = string
  })
  default     = null
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used by the linked service."
  type        = string
  default     = null
}

variable "annotations" {
  description = "A list of annotations for the linked service."
  type        = list(string)
  default     = null
}

variable "parameters" {
  description = "A map of parameters for the linked service."
  type        = map(string)
  default     = null
}

variable "additional_properties" {
  description = "A map of additional properties for the linked service."
  type        = map(string)
  default     = null
}

variable "create_timeout" {
  description = "Timeout for creating the linked service."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "Timeout for reading the linked service."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "Timeout for updating the linked service."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "Timeout for deleting the linked service."
  type        = string
  default     = null
}

variable "username" {
  description = "The username for basic authentication."
  type        = string
  default     = null
}

variable "password" {
  description = "The password for basic authentication."
  type        = string
  default     = null
  sensitive   = true
}

/*
module "odata_linked_service" {
  source = "./modules/odata_linked_service"

  odata_linked_service_name = "example-odata-service"
  data_factory_id           = azurerm_data_factory.example.id
  url                       = "https://example.com/odata"
  basic_authentication      = { username = "example_user", password = "example_password" }
  description               = "Example OData linked service."
  integration_runtime_name  = "example-runtime"
  annotations               = ["example-annotation"]
  parameters                = { param1 = "value1" }
  additional_properties     = { key1 = "value1" }
  create_timeout            = "30m"
  read_timeout              = "10m"
  update_timeout            = "30m"
  delete_timeout            = "10m"
}
*/