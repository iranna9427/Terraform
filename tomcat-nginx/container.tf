








terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.0"
    }
  }
}
resource "docker_container" "c1" {
  name  = "test1"
  image = docker_image.u1.image_id
  ports {
    internal = 80
    external = 80
  }
  command = ["sleep", "100"]
}

resource "docker_container" "t1" {
  name  = "tomcat1"
  image = docker_image.u21.image_id
  ports {
    internal = 8080
    external = 8082
  }
  command = ["bin/catalina.sh", " run"]
}

resource "docker_container" "nginx_container" {
  name  = "nginx_server"
  image = docker_image.nginx_image.image_id
  ports {
    internal = 80
    external = 8081 # Map to an available external port
  }
}
