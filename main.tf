resource "helm_release" "argocd" {
  name       = "argo"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  version    = "3.29.5"

  create_namespace = true
  namespace = "argocd"

  cleanup_on_fail = true

  set {
    name  = "global.additionalLabels.app"
    value = "argo-cd"
    type = "string"
  }
}
