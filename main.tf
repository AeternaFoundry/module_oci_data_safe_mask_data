resource "oci_data_safe_mask_data" "data_safe_mask_data" {
  for_each = var.data_safe_mask_data

  masking_policy_id = each.value.masking_policy_id
  target_id         = each.value.target_id

  dynamic "target_credentials" {
    for_each = each.value.target_credentials != null ? [each.value.target_credentials] : []
    content {
      password  = target_credentials.value.password
      user_name = target_credentials.value.user_name
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

