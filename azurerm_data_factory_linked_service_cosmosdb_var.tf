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