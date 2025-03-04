module "storage" {
  source                      = "./../module"
  #resource_group_name          = var.resource_group_name
  location                     = var.location
  account_tier                 = var.account
  account_replication_type     = var.account_replication_type
  VnetSpokeRGName              = var.VnetSpokeRGName
  VnetSpokeName                = var.VnetSpokeName
  VnetSpokePESubnetName        = var.VnetSpokePESubnetName
  sp_ado_terraform_client_id   = var.sp_ado_terraform_client_id
  sp_ado_terraform_client_secret = var.sp_ado_terraform_client_secret
  tags                         = var.tags
}

resource "azurerm_data_factory_linked_service_azure_blob_storage" "linked_service_azure_blob" {
  name                = var.linked_service_name
  connection_string   = module.AzureStorageAccount01.storage_account_connection_string
  data_factory_id     = var.data_factory_id
}

resource "azurerm_data_factory_dataset_azure_blob" "dataset_azure_blob" {
  name                = var.name
  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.linked_service_azure_blob.name
  data_factory_id     = var.data_factory_id
}
