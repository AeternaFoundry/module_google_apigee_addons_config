output "apigee_addons_configs_id" {
  description = "Map of id values across all apigee_addons_configs, keyed the same as var.apigee_addons_configs except keys with no id are omitted"
  value       = { for k, v in google_apigee_addons_config.apigee_addons_configs : k => v.id if v.id != null && length(v.id) > 0 }
}
output "apigee_addons_configs_addons_config" {
  description = "Map of addons_config values across all apigee_addons_configs, keyed the same as var.apigee_addons_configs except keys with no addons_config are omitted"
  value       = { for k, v in google_apigee_addons_config.apigee_addons_configs : k => one(v.addons_config) if v.addons_config != null && length(v.addons_config) > 0 }
}
output "apigee_addons_configs_deletion_policy" {
  description = "Map of deletion_policy values across all apigee_addons_configs, keyed the same as var.apigee_addons_configs except keys with no deletion_policy are omitted"
  value       = { for k, v in google_apigee_addons_config.apigee_addons_configs : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "apigee_addons_configs_org" {
  description = "Map of org values across all apigee_addons_configs, keyed the same as var.apigee_addons_configs except keys with no org are omitted"
  value       = { for k, v in google_apigee_addons_config.apigee_addons_configs : k => v.org if v.org != null && length(v.org) > 0 }
}

