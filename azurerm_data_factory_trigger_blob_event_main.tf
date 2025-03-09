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

  dynamic "pipeline" {
    for_each = var.pipelines
    content {
      name       = pipeline.value.name
      parameters = pipeline.value.parameters
    }
  }
}


/*
// Example usage
module "blob_trigger" {
  source = "./path/to/module"

  trigger_name          = "example-trigger"
  data_factory_id       = azurerm_data_factory.example.id
  events                = ["Microsoft.Storage.BlobCreated"]
  blob_path_begins_with = "container/input/"
  blob_path_ends_with   = ".csv"
  ignore_empty_blobs    = true
  activated             = true
  storage_account_id    = azurerm_storage_account.example.id
  annotations           = ["example-annotation"]
  description           = "An example blob trigger."

  pipelines = [
    {
      name       = "example-pipeline"
      parameters = { key = "value" }
    }
  ]
}
*/
