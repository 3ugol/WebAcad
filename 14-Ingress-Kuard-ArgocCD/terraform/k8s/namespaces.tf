resource "kubernetes_namespace" "gitlab" {
  metadata {
    name = "gitlab"
  }
}

resource "kubernetes_namespace" "argocd" {
  metadata {
    name = "argocd"
  }
}

//resource "kubernetes_namespace" "vswh" {
//  metadata {
//    name = "vswh"
//  }
//}
