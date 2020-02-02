# Provider section
provider "docker" {
  host = "<docker-host:tcp-port>"
}


# Resource section

# Docker Image
resource "docker_image" "nginx" {
  name = "nginx:1.11-alpine"
}

#Defining the container using image set above
resource "docker_container" "nginx-server" {
  name = "nginx-server"
  image = "${docker_image.nginx.latest}"
  
  # Port definition for nginx instance
  ports {
    internal = 80
  }
  
  # Container and the local host volumes
  volumes {
    container_path = "/usr/local/nginx/html/"
    host_path = "<local-path>"
    read_only = true
  }
}
