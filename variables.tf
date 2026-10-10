variable "cloudfront_field_level_encryption_profiles" {
  description = <<EOT
Map of cloudfront_field_level_encryption_profiles, attributes below
Required:
    - name
    - encryption_entities (block):
        - items (optional, block):
            - field_patterns (required, block):
                - items (optional)
            - provider_id (required)
            - public_key_id (required)
Optional:
    - comment
EOT

  type = map(object({
    name    = string
    comment = optional(string)
    encryption_entities = object({
      items = optional(list(object({
        field_patterns = object({
          items = optional(set(string))
        })
        provider_id   = string
        public_key_id = string
      })))
    })
  }))
}

