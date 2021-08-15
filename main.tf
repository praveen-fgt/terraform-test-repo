provider "google" {
project = "project-322304"
region = "asia-south1"
}

resource "google_compute_instance" "myvm" {
name = "myvm-dev"
zone = "asia-south1-c"
boot_disk {
initialize_params {
  image = "debian-cloud/debian-9"
  size = "10"
}
}
machine_type = "f1-micro" 
network_interface {
network = "default"
}
}
