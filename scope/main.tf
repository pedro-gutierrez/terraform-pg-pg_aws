output "scope" {
  value = "${ var.zone == "uk" ? "all" : "dev" }"
}
