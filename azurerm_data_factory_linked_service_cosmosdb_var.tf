variable "name" {
  description = "The name of the linked service."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory in which to create the linked service."
  type        = string
  default     = ""
}

variable "connection_string" {
  description = "The connection string for the Cosmos DB account."
  type        = string
  default     = ""
}

variable "account_endpoint" {
  description = "The endpoint of the Cosmos DB account."
  type        = string
  default     = ""
}

variable "account_key" {
  description = "The key of the Cosmos DB account."
  type        = string
  default     = ""
}

variable "database" {
  description = "The database name within the Cosmos DB account."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the linked service."
  type        = string
  default     = ""
}

variable "annotations" {
  description = "A list of annotations for the linked service."
  type        = list(string)
  default     = []
}

variable "additional_properties" {
  description = "A map of additional properties for the linked service."
  type        = map(string)
  default     = {}
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used by the linked service."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A map of parameters for the linked service."
  type        = map(string)
  default     = {}
}

/*
module "cosmosdb_linked_service" {
  source = "./cosmosdb_linked_service_module"

  name                    = "example-cosmosdb-linked-service"
  data_factory_id         = azurerm_data_factory.example.id
  connection_string       = "AccountEndpoint=https://example-cosmos.documents.azure.com:443/;AccountKey=exampleKey;"
  account_endpoint        = "https://example-cosmos.documents.azure.com:443/"
  account_key             = "exampleKey"
  database                = "exampleDB"
  description             = "CosmosDB linked service for ADF"
  annotations             = ["example-annotation"]
  additional_properties   = {}
  integration_runtime_name = null
  parameters              = {}
}

output "linked_service_id" {
  value = module.cosmosdb_linked_service.linked_service_id
}
*/
