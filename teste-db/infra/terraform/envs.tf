locals {
  env = {
    stg = {
      postgres_name            = "vouchers-db-stg"
      project_id               = "sk7n5cgh18wl37zmhrva56xfw2mncp"
      postgres_version         = "POSTGRES_13"
      postgres_private_network = "projects/stone-network-nonprod/global/networks/stone-shared-vpc-nonprod"
      postgres_tier            = "db-f1-micro"
      postgres_disk_size       = "10"
      database_name            = "vouchers-db"
    }
    prod = {
      postgres_name            = "vouchers-db-prd"
      project_id               = "sshh3c0bagbsxnryi601jpjldcyce6"
      postgres_version         = "POSTGRES_13"
      postgres_private_network = "projects/stone-network/global/networks/stone-shared-vpc-prod"
      postgres_tier            = "db-custom-1-3840"
      postgres_disk_size       = "100"
      database_name            = "vouchers-db"
      timeouts                 = {update = "50m"}
    }
  }
}
