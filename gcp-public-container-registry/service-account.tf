module "service_accounts" {
  source     = "terraform-google-modules/service-accounts/google"
  version    = "~> 3.0"
  project_id = var.gcp_project_id

  description   = "Service account for publishing images"
  generate_keys = true

  names = [var.service_account_name]
}
