variable "name" {
  description = "The name of the ODBC linked service."
  type        = string
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the linked service."
  type        = string
}

variable "connection_string" {
  description = "The ODBC connection string."
  type        = string
}

variable "description" {
  description = "A description for the ODBC linked service."
  type        = string
  default     = null
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used by the linked service."
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

variable "annotations" {
  description = "A list of annotations for the linked service."
  type        = list(string)
  default     = null
}

variable "additional_properties" {
  description = "A map of additional properties for the linked service."
  type        = map(string)
  default     = null
}

variable "parameters" {
  description = "A map of parameters to associate with the linked service."
  type        = map(string)
  default     = null
}

variable "create_timeout" {
  description = "The timeout for creating the linked service."
  type        = string
  default     = null
}

variable "update_timeout" {
  description = "The timeout for updating the linked service."
  type        = string
  default     = null
}

variable "delete_timeout" {
  description = "The timeout for deleting the linked service."
  type        = string
  default     = null
}

output "linked_service_id" {
  description = "The ID of the created ODBC linked service."
  value       = azurerm_data_factory_linked_service_odbc.example.id
}

/*
# Example Usage
module "odbc_linked_service" {
  source                  = "./path/to/this/module"
  name                    = "example-odbc-linked-service"
  data_factory_id         = "your-data-factory-id"
  connection_string       = "Driver={ODBC Driver};Server=your-server;Database=your-database;Uid=your-username;Pwd=your-password;"
  description             = "An example ODBC linked service."
  integration_runtime_name = "AutoResolveIntegrationRuntime"
  username                = "your-username"
  password                = "your-password"
  annotations             = ["example-annotation"]
  additional_properties   = { key1 = "value1", key2 = "value2" }
  parameters = {
    param1 = "value1"
    param2 = "value2"
  }
  create_timeout          = "30m"
  update_timeout          = "30m"
  delete_timeout          = "30m"
}
*/