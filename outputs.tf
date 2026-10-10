output "cloudfront_field_level_encryption_profiles_id" {
  description = "Map of id values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudfront_field_level_encryption_profiles_arn" {
  description = "Map of arn values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudfront_field_level_encryption_profiles_caller_reference" {
  description = "Map of caller_reference values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.caller_reference if v.caller_reference != null && length(v.caller_reference) > 0 }
}
output "cloudfront_field_level_encryption_profiles_comment" {
  description = "Map of comment values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.comment if v.comment != null && length(v.comment) > 0 }
}
output "cloudfront_field_level_encryption_profiles_encryption_entities" {
  description = "Map of encryption_entities values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => one(v.encryption_entities) if v.encryption_entities != null && length(v.encryption_entities) > 0 }
}
output "cloudfront_field_level_encryption_profiles_etag" {
  description = "Map of etag values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.etag if v.etag != null && length(v.etag) > 0 }
}
output "cloudfront_field_level_encryption_profiles_name" {
  description = "Map of name values across all cloudfront_field_level_encryption_profiles, keyed the same as var.cloudfront_field_level_encryption_profiles"
  value       = { for k, v in aws_cloudfront_field_level_encryption_profile.cloudfront_field_level_encryption_profiles : k => v.name if v.name != null && length(v.name) > 0 }
}

