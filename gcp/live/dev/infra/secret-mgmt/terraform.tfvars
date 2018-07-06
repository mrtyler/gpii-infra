# ↓ Module metadata

terragrunt = {
  terraform {
    source = "/project/modules//gcp-secret-mgmt"
  }

  dependencies {
    paths = [
      "../network",
    ]
  }

  include = {
    path = "${find_in_parent_folders()}"
  }
}

# ↓ Module configuration (empty means all default)

