resource "docker_image" "u1" {
  name = "ubuntu"
}

resource "docker_image" "u21" {
  name = "tomcat"
}

resource "docker_image" "nginx_image" {
  name = "nginx:latest" # Pull the latest Nginx image
}
