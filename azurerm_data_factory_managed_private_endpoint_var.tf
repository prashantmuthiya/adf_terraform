variable "managed_private_endpoint_name" {
  description = "The name of the Managed Private Endpoint."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the Managed Private Endpoint."
  type        = string
}

variable "target_resource_id" {
  description = "The ID of the target resource to which the Managed Private Endpoint will connect."
  type        = string
}

variable "description" {
  description = "A description for the Managed Private Endpoint."
  type        = string
  default     = null
}

variable "subresource_name" {
  description = "The name of the subresource to which the Managed Private Endpoint connects."
  type        = string
  default     = null
}

variable "fqdns" {
  description = "A list of fully qualified domain names for the target resource."
  type        = list(string)
  default     = null
}

variable "create_timeout" {
  description = "The timeout duration for creating the Managed Private Endpoint."
  type        = string
  default     = null
}

variable "read_timeout" {
  description = "The timeout duration for reading the Managed Private Endpoint."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "The timeout duration for updating the Managed Private Endpoint."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "The timeout duration for deleting the Managed Private Endpoint."
  type        = string
  default     = null
}

/*
module "adf_managed_private_endpoint" {
  source                        = "./modules/adf_managed_private_endpoint"
  managed_private_endpoint_name = "example-endpoint"
  data_factory_id               = azurerm_data_factory.example.id
  target_resource_id            = azurerm_storage_account.example.id
  description                   = "Example managed private endpoint"
  subresource_name              = "blob"
  fqdns                         = ["example.blob.core.windows.net"]
  create_timeout                = "30m"
  read_timeout                  = "5m"
  update_timeout                = "30m"
  delete_timeout                = "30m"
}
*/
