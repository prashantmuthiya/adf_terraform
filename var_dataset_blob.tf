# General variables
variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
  type        = string
  default     = "resource-group"
}

variable "location" {
  description = "The location/region where resources will be created."
  type        = string
  default     = "West uk"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "team-infra"
  }
}

# Storage Account variables
variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default     = "storageaccount"
}

variable "account_tier" {
  description = "Defines the tier to use for this storage account. Options: Standard or Premium."
  type        = string
  default     = "Standard"
}

variable "account_replication_type" {
  description = "The replication type for the storage account. Options: LRS, GRS, RAGRS, ZRS."
  type        = string
  default     = "LRS"
}

variable "container_name" {
  description = "The name of the storage container."
  type        = string
  default     = "container"
}

# Networking variables (for private endpoints)
variable "VnetSpokeRGName" {
  description = "The resource group name of the VNet used for the private endpoint."
  type        = string
  default     = "vnet-rg"
}

variable "VnetSpokeName" {
  description = "The name of the Virtual Network used for the private endpoint."
  type        = string
  default     = "vnet"
}

variable "VnetSpokePESubnetName" {
  description = "The subnet name within the VNet for the private endpoint."
  type        = string
  default     = "subnet"
}

# Service Principal for Terraform
variable "sp_ado_terraform_client_id" {
  description = "The client ID of the Service Principal used by Terraform."
  type        = string
  default     = "client-id"
}

variable "sp_ado_terraform_client_secret" {
  description = "The client secret of the Service Principal used by Terraform."
  type        = string
  sensitive   = true
  default     = "client-secret"
}

# Data Factory variables
variable "linked_service_name" {
  description = "The name of the Linked Service for Azure Blob Storage in Data Factory."
  type        = string
  default     = "linked-service"
}

variable "connection_string" {
  description = "The connection string for the Azure Storage Account."
  type        = string
  sensitive   = true
  default     = "connection-string"
}

variable "data_factory_id" {
  description = "The ID of the Data Factory where linked services and datasets are created."
  type        = string
  default     = "data-factory-id"
}

variable "name" {
  description = "The name of the Azure Data Factory dataset."
  type        = string
  default     = "dataset"
}
