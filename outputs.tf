output "data_safe_mask_data_id" {
  description = "Map of id values across all data_safe_mask_data, keyed the same as var.data_safe_mask_data except keys with no id are omitted"
  value       = { for k, v in oci_data_safe_mask_data.data_safe_mask_data : k => v.id if v.id != null && length(v.id) > 0 }
}
output "data_safe_mask_data_masking_policy_id" {
  description = "Map of masking_policy_id values across all data_safe_mask_data, keyed the same as var.data_safe_mask_data except keys with no masking_policy_id are omitted"
  value       = { for k, v in oci_data_safe_mask_data.data_safe_mask_data : k => v.masking_policy_id if v.masking_policy_id != null && length(v.masking_policy_id) > 0 }
}
output "data_safe_mask_data_target_credentials" {
  description = "Map of target_credentials values across all data_safe_mask_data, keyed the same as var.data_safe_mask_data except keys with no target_credentials are omitted"
  value       = { for k, v in oci_data_safe_mask_data.data_safe_mask_data : k => one(v.target_credentials) if v.target_credentials != null && length(v.target_credentials) > 0 }
  sensitive   = true
}
output "data_safe_mask_data_target_id" {
  description = "Map of target_id values across all data_safe_mask_data, keyed the same as var.data_safe_mask_data except keys with no target_id are omitted"
  value       = { for k, v in oci_data_safe_mask_data.data_safe_mask_data : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}

