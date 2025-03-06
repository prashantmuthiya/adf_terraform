resource "azurerm_data_factory_trigger_blob_event" "blob_trigger" {
  name                    = var.trigger_name
  data_factory_id         = var.data_factory_id
  events                  = var.events
  blob_path_begins_with   = var.blob_path_begins_with
  blob_path_ends_with     = var.blob_path_ends_with
  ignore_empty_blobs      = var.ignore_empty_blobs
  activated               = var.activated
  storage_account_id      = var.storage_account_id

  annotations             = var.annotations
  description             = var.description

  pipeline {
    name       = var.pipeline_name
    parameters = var.pipeline_parameters
  }
}