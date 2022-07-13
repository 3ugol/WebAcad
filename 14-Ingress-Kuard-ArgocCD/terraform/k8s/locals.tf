locals {
  k8s = {
    k8s_host                             = "https://k8s.devopsua.tk:6443"
    k8s_wa_cluster_ca_certificate        = ""
    wa_token_terraform_service_account   = ""

  }
  helm = {
    helm_gitlab_version                  = "0.23.0"
    helm_prometheus_operator_version     = "12.3.0"
    helm_argocd_version                  = "4.9.12"
    gitlab_helm_repository               = "https://charts.gitlab.io"
    prometheus_community_helm_repository = "https://prometheus-community.github.io/helm-charts"
    argocd_community_helm_repository     = "https://argoproj.github.io/argo-helm"
  }
}