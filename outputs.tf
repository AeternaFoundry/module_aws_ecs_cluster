output "ecs_clusters_id" {
  description = "Map of id values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ecs_clusters_arn" {
  description = "Map of arn values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "ecs_clusters_configuration" {
  description = "Map of configuration values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => one(v.configuration) if v.configuration != null && length(v.configuration) > 0 }
}
output "ecs_clusters_name" {
  description = "Map of name values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.name if v.name != null && length(v.name) > 0 }
}
output "ecs_clusters_region" {
  description = "Map of region values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ecs_clusters_service_connect_defaults" {
  description = "Map of service_connect_defaults values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => one(v.service_connect_defaults) if v.service_connect_defaults != null && length(v.service_connect_defaults) > 0 }
}
output "ecs_clusters_setting" {
  description = "Map of setting values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.setting if v.setting != null && length(v.setting) > 0 }
}
output "ecs_clusters_tags" {
  description = "Map of tags values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "ecs_clusters_tags_all" {
  description = "Map of tags_all values across all ecs_clusters, keyed the same as var.ecs_clusters"
  value       = { for k, v in aws_ecs_cluster.ecs_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

