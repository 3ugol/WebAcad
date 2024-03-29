locals {
  helm_traefik_version                 = "10.24.0"
  traefik_helm_repository              = "https://helm.traefik.io/traefik"
}

resource "helm_release" "traefik_ingress" {
  name       = "traefik"
  repository = local.traefik_helm_repository
  chart      = "traefik"
  version    = local.helm_traefik_version
  namespace  = "kube-system"

  values = [
    file("${path.module}/values/traefik_ingress.yaml")
  ]
}