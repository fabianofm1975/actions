terraform {
  required_version = ">= 1"
}

terraform {
  backend "gcs" {}
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.61.0"
    }
  }
}

module "terraform-gcp-postgresql" {
  source = "git@github.com:stone-payments/terraform-gcp-postgresql.git?ref=v1.2.0" # See tags for available versions 

  # Server Section
  postgres_name                     = local.env[var.environment].postgres_name
  project_id                        = local.env[var.environment].project_id
  postgres_version                  = local.env[var.environment].postgres_version
  postgres_private_network          = local.env[var.environment].postgres_private_network
  postgres_tier                     = local.env[var.environment].postgres_tier
  postgres_disk_size                = local.env[var.environment].postgres_disk_size
  environment                       = var.environment
  timeouts                          = try(local.env[var.environment].timeouts, null)
  postgres_replica_heartbeat_period = try(local.env[var.environment].postgres_replica_heartbeat_period, "1")
  insights_config                   = try(local.env[var.environment].insights_config, null)
  # Database section
  database_name          = local.env[var.environment].database_name
  instance_database_name = local.env[var.environment].postgres_name
  project_database       = local.env[var.environment].project_id
}