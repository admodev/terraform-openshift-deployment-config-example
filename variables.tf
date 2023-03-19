variable "deployment_config_name" {
  type = string
}

variable "deployment_config_labels_test" {
  type = string
}

variable "deployment_config_spec_replicas" {
  type = number
}

variable "deployment_config_container_image" {
  type = string
}

variable "deployment_config_container_image_name" {
  type = string
}

variable "deployment_config_container_image_cpu_limit" {
  type = string
}

variable "deployment_config_container_image_cpu_request" {
  type = string
}

variable "deployment_config_container_image_memory_limit" {
  type = string
}

variable "deployment_config_container_image_memory_request" {
  type = string
}

variable "deployment_config_container_liveness_probe_http_get_path" {
  type = string
}

variable "deployment_config_container_liveness_probe_http_get_port" {
  type = number
}

variable "deployment_config_container_liveness_probe_http_header_name" {
  type = string
}

variable "deployment_config_container_liveness_probe_http_header_value" {
  type = string  
}

variable "deployment_config_container_liveness_probe_initial_delay_seconds" {
  type = number
}

variable "deployment_config_container_liveness_probe_initial_period_seconds" {
  type = number
}

variable "deployment_config_spec_trigger_type" {
  type = string
}
