module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "3.4.0"

    project_id   = var.project
    network_name = "gaurav-network-0000"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "gaurav-subnet-001"
            subnet_ip             = "10.100.10.0/24"
            subnet_region         = var.region
        }
    ]
}