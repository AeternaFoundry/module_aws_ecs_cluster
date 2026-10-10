variable "ecs_clusters" {
  description = <<EOT
Map of ecs_clusters, attributes below
Required:
    - name
Optional:
    - region
    - tags
    - tags_all
    - configuration (block):
        - execute_command_configuration (optional, block):
            - kms_key_id (optional)
            - log_configuration (optional, block):
                - cloud_watch_encryption_enabled (optional)
                - cloud_watch_log_group_name (optional)
                - s3_bucket_encryption_enabled (optional)
                - s3_bucket_name (optional)
                - s3_key_prefix (optional)
            - logging (optional)
        - managed_storage_configuration (optional, block):
            - fargate_ephemeral_storage_kms_key_id (optional)
            - kms_key_id (optional)
    - service_connect_defaults (block):
        - namespace (required)
    - setting (block):
        - name (required)
        - value (required)
EOT

  type = map(object({
    name     = string
    region   = optional(string)
    tags     = optional(map(string))
    tags_all = optional(map(string))
    configuration = optional(object({
      execute_command_configuration = optional(object({
        kms_key_id = optional(string)
        log_configuration = optional(object({
          cloud_watch_encryption_enabled = optional(bool)
          cloud_watch_log_group_name     = optional(string)
          s3_bucket_encryption_enabled   = optional(bool)
          s3_bucket_name                 = optional(string)
          s3_key_prefix                  = optional(string)
        }))
        logging = optional(string)
      }))
      managed_storage_configuration = optional(object({
        fargate_ephemeral_storage_kms_key_id = optional(string)
        kms_key_id                           = optional(string)
      }))
    }))
    service_connect_defaults = optional(object({
      namespace = string
    }))
    setting = optional(list(object({
      name  = string
      value = string
    })))
  }))
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

