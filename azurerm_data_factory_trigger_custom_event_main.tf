resource "azurerm_data_factory_trigger_custom_event" "this" {
  name                  = var.trigger_name
  data_factory_id       = var.data_factory_id
  eventgrid_topic_id    = var.eventgrid_topic_id
  events                = var.events
  subject_begins_with   = var.subject_begins_with
  subject_ends_with     = var.subject_ends_with
  annotations           = var.annotations
  description           = var.description

  pipeline {
    name       = var.pipeline_name
    parameters = var.pipeline_parameters
  }
}