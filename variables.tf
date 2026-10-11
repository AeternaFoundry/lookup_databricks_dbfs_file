variable "dbfs_file_lookup" {
  description = <<EOT
Map of dbfs_file_lookup, attributes below
Required:
    - limit_file_size
    - path
Optional:
    - provider_config (block):
        - workspace_id (optional)
EOT

  type = map(object({
    limit_file_size = bool
    path            = string
    provider_config = optional(object({
      workspace_id = optional(string)
    }))
  }))
}

