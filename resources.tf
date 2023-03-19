resource "openshift_deployment_config" "example" {
  metadata {
    name = var.deployment_config_name
    labels = {
      test = var.deployment_config_labels_test
    }
  }

  spec {
    replicas = var.deployment_config_spec_replicas

    selector {
      match_labels = {
        test = var.deployment_config_labels_test
      }
    }

    template {
      metadata {
        labels = {
          test = var.deployment_config_labels_test
        }
      }

      spec {
        container {
          image = var.deployment_config_container_image
          name  = var.deployment_config_container_image_name

          resources {
            limits {
              cpu    = var.deployment_config_container_image_cpu_limit
              memory = var.deployment_config_container_image_memory_limit
            }
            requests {
              cpu    = deployment_config_container_image_cpu_request
              memory = deployment_config_container_image_memory_request
            }
          }

          liveness_probe {
            http_get {
              path = var.deployment_config_container_liveness_probe_http_get_path
              port = var.deployment_config_container_liveness_probe_http_get_port

              http_header {
                name  = var.deployment_config_container_liveness_probe_http_header_name
                value = var.deployment_config_container_liveness_probe_http_header_value
              }
            }

            initial_delay_seconds = var.deployment_config_container_liveness_probe_initial_delay_seconds
            period_seconds        = var.deployment_config_container_liveness_probe_initial_period_seconds
          }
        }
      }
    }

    trigger {
      type = var.deployment_config_spec_trigger_type
    }
  }
}
