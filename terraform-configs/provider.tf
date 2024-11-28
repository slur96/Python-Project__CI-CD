provider "kubernetes" {
  host = minikube_cluster.cluster.host
  client_certificate     = minikube_cluster.cluster.client_certificate
  client_key             = minikube_cluster.cluster.client_key
  cluster_ca_certificate = minikube_cluster.cluster.cluster_ca_certificate
}

provider "heml" {
  kubernetes {
    config_path = "~/.kube/config_path"
  }
}