resource "google_apigee_addons_config" "apigee_addons_configs" {
  for_each = var.apigee_addons_configs

  org             = each.value.org
  deletion_policy = each.value.deletion_policy

  dynamic "addons_config" {
    for_each = each.value.addons_config != null ? [each.value.addons_config] : []
    content {
      dynamic "advanced_api_ops_config" {
        for_each = addons_config.value.advanced_api_ops_config != null ? [addons_config.value.advanced_api_ops_config] : []
        content {
          enabled = advanced_api_ops_config.value.enabled
        }
      }
      dynamic "api_security_config" {
        for_each = addons_config.value.api_security_config != null ? [addons_config.value.api_security_config] : []
        content {
          enabled = api_security_config.value.enabled
        }
      }
      dynamic "connectors_platform_config" {
        for_each = addons_config.value.connectors_platform_config != null ? [addons_config.value.connectors_platform_config] : []
        content {
          enabled = connectors_platform_config.value.enabled
        }
      }
      dynamic "integration_config" {
        for_each = addons_config.value.integration_config != null ? [addons_config.value.integration_config] : []
        content {
          enabled = integration_config.value.enabled
        }
      }
      dynamic "monetization_config" {
        for_each = addons_config.value.monetization_config != null ? [addons_config.value.monetization_config] : []
        content {
          enabled = monetization_config.value.enabled
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

