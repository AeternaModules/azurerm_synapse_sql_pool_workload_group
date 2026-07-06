output "synapse_sql_pool_workload_groups" {
  description = "All synapse_sql_pool_workload_group resources"
  value       = azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups
}
output "synapse_sql_pool_workload_groups_importance" {
  description = "List of importance values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.importance]
}
output "synapse_sql_pool_workload_groups_max_resource_percent" {
  description = "List of max_resource_percent values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.max_resource_percent]
}
output "synapse_sql_pool_workload_groups_max_resource_percent_per_request" {
  description = "List of max_resource_percent_per_request values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.max_resource_percent_per_request]
}
output "synapse_sql_pool_workload_groups_min_resource_percent" {
  description = "List of min_resource_percent values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.min_resource_percent]
}
output "synapse_sql_pool_workload_groups_min_resource_percent_per_request" {
  description = "List of min_resource_percent_per_request values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.min_resource_percent_per_request]
}
output "synapse_sql_pool_workload_groups_name" {
  description = "List of name values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.name]
}
output "synapse_sql_pool_workload_groups_query_execution_timeout_in_seconds" {
  description = "List of query_execution_timeout_in_seconds values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.query_execution_timeout_in_seconds]
}
output "synapse_sql_pool_workload_groups_sql_pool_id" {
  description = "List of sql_pool_id values across all synapse_sql_pool_workload_groups"
  value       = [for k, v in azurerm_synapse_sql_pool_workload_group.synapse_sql_pool_workload_groups : v.sql_pool_id]
}

