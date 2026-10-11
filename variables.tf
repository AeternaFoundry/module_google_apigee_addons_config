variable "apigee_addons_configs" {
  description = <<EOT
Map of apigee_addons_configs, attributes below
Required:
    - org
Optional:
    - deletion_policy
    - addons_config (block):
        - advanced_api_ops_config (optional, block):
            - enabled (optional)
        - api_security_config (optional, block):
            - enabled (optional)
        - connectors_platform_config (optional, block):
            - enabled (optional)
        - integration_config (optional, block):
            - enabled (optional)
        - monetization_config (optional, block):
            - enabled (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    org             = string
    deletion_policy = optional(string)
    addons_config = optional(object({
      advanced_api_ops_config = optional(object({
        enabled = optional(bool)
      }))
      api_security_config = optional(object({
        enabled = optional(bool)
      }))
      connectors_platform_config = optional(object({
        enabled = optional(bool)
      }))
      integration_config = optional(object({
        enabled = optional(bool)
      }))
      monetization_config = optional(object({
        enabled = optional(bool)
      }))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

