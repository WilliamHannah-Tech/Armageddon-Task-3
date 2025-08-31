# VM's for Amageddon 3

resource "google_compute_instance" "tokyovm" {
  name         = "tokyovm"
  machine_type = "n2-standard-2"
  zone         = "asia-northeast1-a"
  
  boot_disk {
    initialize_params {
      image = "windows-cloud/windows-server-2022-dc-v20240612"
    }
  }

  network_interface {
    subnetwork = google_compute_subnetwork.tokyo.name
    access_config {
      // Ephemeral public IP
    }
  }
  metadata_startup_script = file("./startup.sh")
  }


# resource "google_compute_instance" "brazil-vm" {
#   name         = "brazil-vm"
#   machine_type = "n2-standard-2"
#   zone         = "southamerica-east1-a"
#   tags         = ["anthony"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.anthony-brazil.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }

# resource "google_compute_instance" "belgium-vm" {
#   name         = "belgium-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west1-b"
#   tags         = ["cooper"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.cooper-belgium.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


# resource "google_compute_instance" "hongkong-vm" {
#   name         = "hongkong-vm"
#   machine_type = "n2-standard-2"
#   zone         = "asia-east2-a"
#   tags         = ["alex"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.alex-hongkong.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#   resource "google_compute_instance" "london-vm" {
#   name         = "london-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west2-a"
#   tags         = ["carlton"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.carlton-london.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#    resource "google_compute_instance" "frankfurt-vm" {
#   name         = "frankfurt-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west3-a"
#   tags         = ["charles"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.charles-frankfurt.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#    resource "google_compute_instance" "zurich-vm" {
#   name         = "zurich-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west6-c"
#   tags         = ["andre"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.andre-zurich.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#    resource "google_compute_instance" "milan-vm" {
#   name         = "milan-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west8-a"
#   tags         = ["bailey"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.bailey-milan.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#    resource "google_compute_instance" "berlin-vm" {
#   name         = "berlin-vm"
#   machine_type = "n2-standard-2"
#   zone         = "europe-west10-a"
#   tags         = ["sekou"]
#   boot_disk {
#     initialize_params {
#       image = "debian-cloud/debian-12"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.sekou-berlin.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }


#    resource "google_compute_instance" "dallas-vm" {
#   name         = "dallas-vm"
#   machine_type = "n2-standard-2"
#   zone         = "us-south1-a"
#   tags         = ["william"]
#   boot_disk {
#     initialize_params {
#       image = "windows-cloud/windows-server-2022-dc-v20240612"
#     }
#   }

#   network_interface {
#     subnetwork = google_compute_subnetwork.william-dallas.name
#     access_config {
#       // Ephemeral public IP
#     }
#   }
# metadata_startup_script = file("./startup.sh")
#   }
