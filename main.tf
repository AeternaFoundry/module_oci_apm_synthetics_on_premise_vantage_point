resource "oci_apm_synthetics_on_premise_vantage_point" "apm_synthetics_on_premise_vantage_points" {
  for_each = var.apm_synthetics_on_premise_vantage_points

  apm_domain_id = each.value.apm_domain_id
  name          = each.value.name
  defined_tags  = each.value.defined_tags
  description   = each.value.description
  freeform_tags = each.value.freeform_tags
  type          = each.value.type

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

