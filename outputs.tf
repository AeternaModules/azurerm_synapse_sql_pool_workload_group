output "synapse_sql_pool_workload_groups_id" {
  description = "Map of id values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.id if v.id != null && length(v.id) > 0 }
}
output "synapse_sql_pool_workload_groups_importance" {
  description = "Map of importance values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.importance if v.importance != null && length(v.importance) > 0 }
}
output "synapse_sql_pool_workload_groups_max_resource_percent" {
  description = "Map of max_resource_percent values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.max_resource_percent if v.max_resource_percent != null }
}
output "synapse_sql_pool_workload_groups_max_resource_percent_per_request" {
  description = "Map of max_resource_percent_per_request values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.max_resource_percent_per_request if v.max_resource_percent_per_request != null }
}
output "synapse_sql_pool_workload_groups_min_resource_percent" {
  description = "Map of min_resource_percent values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.min_resource_percent if v.min_resource_percent != null }
}
output "synapse_sql_pool_workload_groups_min_resource_percent_per_request" {
  description = "Map of min_resource_percent_per_request values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.min_resource_percent_per_request if v.min_resource_percent_per_request != null }
}
output "synapse_sql_pool_workload_groups_name" {
  description = "Map of name values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.name if v.name != null && length(v.name) > 0 }
}
output "synapse_sql_pool_workload_groups_query_execution_timeout_in_seconds" {
  description = "Map of query_execution_timeout_in_seconds values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.query_execution_timeout_in_seconds if v.query_execution_timeout_in_seconds != null }
}
output "synapse_sql_pool_workload_groups_sql_pool_id" {
  description = "Map of sql_pool_id values across all synapse_sql_pool_workload_groups, keyed the same as var.synapse_sql_pool_workload_groups"
  value       = { for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : k => v.sql_pool_id if v.sql_pool_id != null && length(v.sql_pool_id) > 0 }
}

