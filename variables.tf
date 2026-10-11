variable "apm_synthetics_on_premise_vantage_points" {
  description = <<EOT
Map of apm_synthetics_on_premise_vantage_points, attributes below
Required:
    - apm_domain_id
    - name
Optional:
    - defined_tags
    - description
    - freeform_tags
    - type
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    apm_domain_id = string
    name          = string
    defined_tags  = optional(map(string))
    description   = optional(string)
    freeform_tags = optional(map(string))
    type          = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

