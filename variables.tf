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
  # --- Unconfirmed validation candidates, derived from azurerm_synapse_sql_pool_workload_group's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: sql_pool_id
  #   source:    [from validate.SqlPoolID] !ok
  # path: sql_pool_id
  #   source:    [from validate.SqlPoolID] err != nil
  # path: max_resource_percent
  #   condition: value >= 1 && value <= 100
  #   message:   must be between 1 and 100
  # path: min_resource_percent
  #   condition: value >= 0 && value <= 100
  #   message:   must be between 0 and 100
  # path: importance
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: max_resource_percent_per_request
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: min_resource_percent_per_request
  #   source:    validation.FloatBetween(...) - no translation rule yet, add one
  # path: query_execution_timeout_in_seconds
  #   condition: value >= 0
  #   message:   must be at least 0
}

