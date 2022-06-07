terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "nhan-phan-ck-org"
    workspaces {
      name = "hashicat-gcp"
    }
  }
}
