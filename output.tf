output "release_metadata" {
  description = "ID of the release"
  value       = helm_release.argocd.metadata
}
