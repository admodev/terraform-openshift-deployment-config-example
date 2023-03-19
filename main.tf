provider "openshift" {
  load_config_file = "false"

  # The hostname (in form of URI) of Kubernetes master. Can be sourced from KUBE_HOST
  host = "https://127.0.0.1"

  # PEM-encoded client certificate for TLS authentication. Can be sourced from KUBE_CLIENT_CERT_DATA
  client_certificate    = file("~/.kube/client-cert.pem")
  # PEM-encoded client certificate key for TLS authentication. Can be sourced from KUBE_CLIENT_KEY_DATA
  client_key            = file("~/.kube/client-key.pem")
  # PEM-encoded root certificates bundle for TLS authentication. Can be sourced from KUBE_CLUSTER_CA_CERT_DATA
  client_ca_certificate = file("~/.kube/cluster-ca-cert.pem")
}
