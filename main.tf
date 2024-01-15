resource "google_compute_instance" "app-server" {
  name         = "app-server"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"
boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
    }
      }
    }

  network_interface {
 network = "default"
  }
  metadata_startup_script = "echo hi > /test.txt"
}


