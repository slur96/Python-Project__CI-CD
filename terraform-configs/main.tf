terraform {
  required_providers {
    minikube = {
      source = "scott-the-programmer/minikube"
    }
  }
}

provider "minikube" {
  kubernetes_version = "v1.30.0"
}

resource "minikube_cluster" "minikube_docker" {
  iso_url      = ["https://github.com/kubernetes/minikube/releases/download/v1.34.0/minikube-v1.34.0-arm64.iso"]
  driver       = "docker"
  cpus         = 2
  cni          = "bridge" 
  memory       = "4096mb"
  disk_size    = "20000mb"
  cluster_name = "devops-project"
  addons = [
    "default-storageclass",
    "dashboard",
    "ingress",
    "storage-provisioner"
  ]
}