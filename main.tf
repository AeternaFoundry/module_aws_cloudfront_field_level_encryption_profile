resource "aws_cloudfront_field_level_encryption_profile" "cloudfront_field_level_encryption_profiles" {
  for_each = var.cloudfront_field_level_encryption_profiles

  name    = each.value.name
  comment = each.value.comment

  encryption_entities {
    dynamic "items" {
      for_each = each.value.encryption_entities.items != null ? each.value.encryption_entities.items : []
      content {
        field_patterns {
          items = items.value.field_patterns.items
        }
        provider_id   = items.value.provider_id
        public_key_id = items.value.public_key_id
      }
    }
  }
}

