provider "vault" {
  token_name = "terraform"
}

data "vault_generic_secret" "gcp_credentials" {
  path = "kv/GCP/Creds/db/"
}

provider "google" {
  credentials = data.vault_generic_secret.gcp_credentials.data_json
  project     = var.project_id
}

module "project-custom-role" {
  source = "app.terraform.io/db-poc-dev/db_Role_template/google"

  target_level         = "project"
  target_id            = "project_id_123"
  role_id              = "custom_role_id"
  title                = "Custom Role Unique Title"
  description          = "Custom Role Description"
  base_roles           = ["roles/iam.serviceAccountAdmin"]
  permissions          = ["iam.roles.list", "iam.roles.create", "iam.roles.delete"]
}
