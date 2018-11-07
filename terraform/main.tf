resource "google_compute_instance" "raddit" {
    name = "raddit-instance"
    machine_type = "n1-standard-1"
    zone = "us-east4-c"

    boot_disk {
        initialize_params {
            image = "raddit-base"
        }
    }

    network_interface {
        network = "default"
        access_config {}
    }
}