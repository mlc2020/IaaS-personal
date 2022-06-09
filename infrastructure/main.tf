# # Pulls the image
resource "docker_image" "python-docker" {
  name = "python-docker:latest"
}

# Create a container
resource "docker_container" "python-app" {
  image = docker_image.python-docker.latest
  name  = "python-app"
  ports {
      internal = 8080
      external = 8080
  }
}