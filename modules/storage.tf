## storage_account_module/outputs.tf

output "storage_account_name" {
  value = azurerm_storage_account.storage_account.name
}

output "storage_account_connection_string" {
  value = azurerm_storage_account.storage_account.primary_connection_string
}

output "private_endpoint_id" {
  value = azurerm_private_endpoint.pe.id
}

output "private_dns_a_record_id" {
  value = azurerm_private_dns_a_record.dns_a_record.id
}

## storage_account_module/variables.tf

variable "resource_group_name" {
  description = "The name of the resource group in which to create resources."
  type        = string
  default     = "example-resource-group"
}

variable "location" {
  description = "The location/region where resources will be created."
  type        = string
  default     = "East UK"
}

variable "tags" {
  description = "A map of tags to assign to the resources."
  type        = map(string)
  default     = {
    environment = "dev"
    owner       = "team-infra"
  }
}

variable "storage_account_name" {
  description = "The name of the Azure Storage Account."
  type        = string
  default     = "examplestorageaccount"
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

variable "VnetSpokeRGName" {
  description = "The resource group name of the VNet used for the private endpoint."
  type        = string
  default     = "example-vnet-rg"
}

variable "VnetSpokeName" {
  description = "The name of the Virtual Network used for the private endpoint."
  type        = string
  default     = "example-vnet"
}

variable "VnetSpokePESubnetName" {
  description = "The subnet name within the VNet for the private endpoint."
  type        = string
  default     = "example-subnet"
}

## storage_account_module/main.tf

resource "azurerm_storage_account" "storage_account" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  tags                     = var.tags
}

resource "azurerm_private_endpoint" "pe" {
  name                = "example-pe"
  resource_group_name = var.resource_group_name
  location            = var.location
  subnet_id           = var.VnetSpokePESubnetName

  private_service_connection {
    name                           = "example-privateserviceconnection"
    private_connection_resource_id = azurerm_storage_account.storage_account.id
    is_manual_connection           = false
    subresource_names              = ["blob"]
  }
}

resource "azurerm_private_dns_a_record" "dns_a_record" {
  name                = "example-dns-record"
  zone_name           = "example.com"
  resource_group_name = var.resource_group_name
  ttl                 = 300
  records             = [azurerm_private_endpoint.pe.private_service_connection[0].private_ip_address]
}
