variable "name" {
  description = "The name of the linked service."
  type        = string
  default     = ""
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = ""
}

variable "data_factory_id" {
  description = "The ID of the Data Factory."
  type        = string
  default     = ""
}

variable "key_vault_id" {
  description = "The ID of the Key Vault."
  type        = string
  default     = ""
}

variable "description" {
  description = "The description of the linked service."
  type        = string
  default     = ""
}

variable "integration_runtime_name" {
  description = "The name of the integration runtime to be used."
  type        = string
  default     = null
}