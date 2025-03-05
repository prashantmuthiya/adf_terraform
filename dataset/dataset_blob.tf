module "storage" {
  source                      = "./modules/storage"
  resource_group_name          = local.resource_group_name
  location                     = local.location
  account_tier                 = local.account_tier
  account_replication_type     = local.account_replication_type
  VnetSpokeRGName              = local.VnetSpokeRGName
  VnetSpokeName                = local.VnetSpokeName
  VnetSpokePESubnetName        = local.VnetSpokePESubnetName
  tags                         = local.tags
}

resource "azurerm_data_factory_linked_service_azure_blob_storage" "linked_service_azure_blob" {
  name                = var.linked_service_name
  connection_string   = module.storage.storage_account_connection_string
  data_factory_id     = var.data_factory_id
}

resource "azurerm_data_factory_dataset_azure_blob" "dataset_azure_blob" {
  name                = var.name
  linked_service_name = azurerm_data_factory_linked_service_azure_blob_storage.linked_service_azure_blob.name
  data_factory_id     = var.data_factory_id
}