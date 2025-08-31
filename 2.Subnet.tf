# Subnets for Armageddon 3
# Subnot for Logan
resource "google_compute_subnetwork" "tokyo" {
  name                     = "tokyo"
  ip_cidr_range            = "10.100.15.0/24"
  region                   = "asia-northeast1"
  network                  = google_compute_network.armageddon.id
  private_ip_google_access = true
}

resource "google_compute_subnetwork" "regional_proxy_subnet" {
  name          = "regional-proxy-subnet"
  region        = "asia-northeast1"
  ip_cidr_range = "10.100.20.0/24"
  # This purpose reserves this subnet for regional Envoy-based load balancers
  purpose       = "REGIONAL_MANAGED_PROXY"
  network       = google_compute_network.armageddon.id
  role          = "ACTIVE"
}
