resource "azurerm_data_factory_trigger_custom_event" "trigger_custom_event" {
  name                = var.trigger_name
  data_factory_id     = var.data_factory_id
  eventgrid_topic_id  = var.eventgrid_topic_id
  events              = var.events
  subject_begins_with = var.subject_begins_with
  subject_ends_with   = var.subject_ends_with
  description         = var.description
  activated           = var.activated
  additional_properties = var.additional_properties

  dynamic "pipeline" {
    for_each = var.pipelines != null ? var.pipelines : []
    iterator = pipeline_entry
    content {
      name       = pipeline_entry.value.name
      parameters = pipeline_entry.value.parameters
    }
  }
}
