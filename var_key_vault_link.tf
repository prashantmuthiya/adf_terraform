variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault."
  default     = " KeyVault"
}

variable "kv_sku" {
    type      = string
    description = "the sku of the vault to be create"
    default = "Standard"
}

variable "location" {
  type        = string
  description = "The location/region where resources will be deployed."
  default     = "East-Uk"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the resource group."
  default     = "RG"
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID for Azure Active Directory."
  default = "null"
}

variable "data_factory_id" {
  type        = string
  description = "The ID of the existing Data Factory."
  default = "adf"
}

variable "linked_service_name" {
  type        = string
  description = "The name of the linked service in Data Factory."
  default     = "LinkedService"
}