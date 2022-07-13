terraform {
  required_version = "1.2.3"
  backend "consul" {
    address = "http://inst-01.devopsua.tk:8500"
    scheme  = "http"
    path    = "3005/dev/k8s/terraform.tfstate"
    lock = true
  }
  required_providers {
    helm = "2.6.0"
    kubernetes = "2.12.1"
  }
}