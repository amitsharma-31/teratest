# Terraform configuration
resource "docker_image" "nginx" {
  name = "nginx:latest"
}
resource "docker_container" "web" {
  name  = "hashicorp-learn2"
  image = "nginx"
  env   = []
  ports {
    external = 8081
    internal = 80
    ip       = "::"
  }
  lifecycle {
#    prevent_destroy       = true
    create_before_destroy = true
  }

}
