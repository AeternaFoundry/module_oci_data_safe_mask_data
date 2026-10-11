variable "data_safe_mask_data" {
  description = <<EOT
Map of data_safe_mask_data, attributes below
Required:
    - masking_policy_id
    - target_id
Optional:
    - target_credentials (block):
        - password (required)
        - user_name (required)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    masking_policy_id = string
    target_id         = string
    target_credentials = optional(object({
      password  = string
      user_name = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

