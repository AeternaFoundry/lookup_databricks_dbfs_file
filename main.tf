data "databricks_dbfs_file" "dbfs_file_lookup" {
  for_each = var.dbfs_file_lookup

  limit_file_size = each.value.limit_file_size
  path            = each.value.path

  dynamic "provider_config" {
    for_each = each.value.provider_config != null ? [each.value.provider_config] : []
    content {
      workspace_id = provider_config.value.workspace_id
    }
  }
}

