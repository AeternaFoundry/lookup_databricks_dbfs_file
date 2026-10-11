output "dbfs_file_lookup_id" {
  description = "Map of id values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no id are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dbfs_file_lookup_content" {
  description = "Map of content values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no content are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => v.content if v.content != null && length(v.content) > 0 }
}
output "dbfs_file_lookup_file_size" {
  description = "Map of file_size values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no file_size are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => v.file_size if v.file_size != null }
}
output "dbfs_file_lookup_limit_file_size" {
  description = "Map of limit_file_size values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no limit_file_size are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => v.limit_file_size if v.limit_file_size != null }
}
output "dbfs_file_lookup_path" {
  description = "Map of path values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no path are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => v.path if v.path != null && length(v.path) > 0 }
}
output "dbfs_file_lookup_provider_config" {
  description = "Map of provider_config values across all dbfs_file_lookup, keyed the same as var.dbfs_file_lookup except keys with no provider_config are omitted"
  value       = { for k, v in data.databricks_dbfs_file.dbfs_file_lookup : k => one(v.provider_config) if v.provider_config != null && length(v.provider_config) > 0 }
}

