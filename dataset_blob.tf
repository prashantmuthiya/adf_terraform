resource "azurerm_storage_account" "this" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "this" {
  name                  = var.container_name
  storage_account_name  = azurerm_storage_account.this.name
  container_access_type = "private"
}

resource "azurerm_data_factory_linked_service_azure_blob_storage" "this" {
  name                = var.linked_service_name
  connection_string   = var.connection_string
  data_factory_id     = var.data_factory_id
}

resource "azurerm_data_factory_dataset_azure_blob" "this" {
  name                = var.name
  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.this.name
  data_factory_id     = var.data_factory_id
}

