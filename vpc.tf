module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = "var.project"
    network_name = "random-gaurav-network"

    subnets = [
      {
        subnet_name   = "random-gaurav-subnet"
        subnet_ip     = "10.100.10.0/24"
        subnet_region = var.region
      }
    ]
}