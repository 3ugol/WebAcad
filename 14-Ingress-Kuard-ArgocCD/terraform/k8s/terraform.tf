terraform {
  required_version = "0.14.11"
  backend "consul" {
    address = "http://inst-02.devopsua.tk:8500"
    scheme  = "http"
    path    = "0409/dev/k8s/terraform.tfstate"
    lock = true
  }
  required_providers {
    helm = "2.3.0"
    kubernetes = "2.6.1"
  }
}