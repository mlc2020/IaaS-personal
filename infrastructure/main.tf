# # Pulls the image
resource "docker_image" "python-docker" {
  name = "mlc2020/dockerhub:python-docker-first"
}

# Create a container
resource "docker_container" "python-app" {
  image = docker_image.python-docker.latest
  name  = "python-app"
  ports {
    internal = 8080
    external = 8000
    ip = "0.0.0.0"
  }
}