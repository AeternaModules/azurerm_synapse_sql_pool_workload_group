variable "synapse_sql_pool_workload_groups" {
  description = <<EOT
Map of synapse_sql_pool_workload_groups, attributes below
Required:
    - max_resource_percent
    - min_resource_percent
    - name
    - sql_pool_id
Optional:
    - importance
    - max_resource_percent_per_request
    - min_resource_percent_per_request
    - query_execution_timeout_in_seconds
EOT

  type = map(object({
    max_resource_percent               = number
    min_resource_percent               = number
    name                               = string
    sql_pool_id                        = string
    importance                         = optional(string)
    max_resource_percent_per_request   = optional(number)
    min_resource_percent_per_request   = optional(number)
    query_execution_timeout_in_seconds = optional(number)
  }))
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.max_resource_percent >= 1 && v.max_resource_percent <= 100
      )
    ])
    error_message = "must be between 1 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.min_resource_percent >= 0 && v.min_resource_percent <= 100
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.importance == null || (length(v.importance) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.max_resource_percent_per_request == null || (v.max_resource_percent_per_request >= 0 && v.max_resource_percent_per_request <= 100)
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.min_resource_percent_per_request == null || (v.min_resource_percent_per_request >= 0 && v.min_resource_percent_per_request <= 100)
      )
    ])
    error_message = "must be between 0 and 100"
  }
  validation {
    condition = alltrue([
      for k, v in var.synapse_sql_pool_workload_groups : (
        v.query_execution_timeout_in_seconds == null || (v.query_execution_timeout_in_seconds >= 0)
      )
    ])
    error_message = "must be at least 0"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

