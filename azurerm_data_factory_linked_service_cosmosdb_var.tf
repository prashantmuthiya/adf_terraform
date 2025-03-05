variable "name" {
  description = "The name of the Cosmos DB linked service."
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
  description = "The endpoint URL for the Cosmos DB account."
  type        = string
  default     = ""
}

variable "account_key" {
  description = "The key for the Cosmos DB account."
  type        = string
  default     = ""
}

variable "database" {
  description = "The name of the Cosmos DB database."
  type        = string
  default     = ""
}

variable "description" {
  description = "A description of the linked service."
  type        = string
  default     = ""
}