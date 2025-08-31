# https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
resource "google_compute_router" "tokyorouter" {
  name    = "tokyorouter"
  region  = "asia-northeast1"
  network = google_compute_network.armageddon.id
}

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "brazilrouter" {
#   name    = "brazilrouter"
#   region  = "southamerica-east1"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "belgiumrouter" {
#   name    = "belgiumrouter"
#   region  = "europe-west1"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "hongkongrouter" {
#   name    = "hongkongrouter"
#   region  = "asia-east2"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "londonouter" {
#   name    = "londonrouter"
#   region  = "europe-west2"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "frankfurtrouter" {
#   name    = "frankfurtrouter"
#   region  = "europe-west3"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "zurichrouter" {
#   name    = "zurichrouter"
#   region  = "europe-west6"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "milanrouter" {
#   name    = "milanrouter"
#   region  = "europe-west8"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "berlinrouter" {
#   name    = "berlinrouter"
#   region  = "europe-west10"
#   network = google_compute_network.armageddon.id
# }

# # https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/compute_router
# resource "google_compute_router" "dallasouter" {
#   name    = "dallasouter"
#   region  = "us-south1"
#   network = google_compute_network.armageddon.id
# }

