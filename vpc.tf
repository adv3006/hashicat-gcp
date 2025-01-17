module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 4.0"

    project_id   = var.project
    network_name = "gaurav-network-00000"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "gaurav-subnet-0001"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}