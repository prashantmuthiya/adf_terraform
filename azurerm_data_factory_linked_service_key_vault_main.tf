variable "name" {
  description = "The name of the Key Vault linked service."
  type        = string
  default     = "value"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = "value"
}

variable "key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
  default     = "value"
}

variable "description" {
  description = "A description for the linked service."
  type        = string
  default     = "Key Vault linked service."
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime."
  type        = string
  default     = null
}

variable "parameters" {
  description = "A map of parameters for the linked service."
  type        = map(string)
  default     = {}
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

variable "create_timeout" {
  description = "The create timeout."
  type        = string
  default     = "60m"
}

variable "read_timeout" {
  description = "The read timeout."
  type        = string
  default     = "5m"
}

variable "update_timeout" {
  description = "The update timeout."
  type        = string
  default     = "60m"
}

variable "delete_timeout" {
  description = "The delete timeout."
  type        = string
  default     = "60m"
}