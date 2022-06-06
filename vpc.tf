module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = ""
    network_name = "example-vpc"

    subnets = [
        {
            subnet_name           = "gaurav-subnet-3"
            subnet_ip             = "10.101.10.0/24"
            subnet_region         = var.region
        }
    ]
}