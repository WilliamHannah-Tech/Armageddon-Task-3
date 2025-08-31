

# Create url map
resource "google_compute_region_url_map" "lb" {
  name                  = "lb"
  region                = "asia-northeast1"
  default_service       = google_compute_region_backend_service.lb-backend-service.self_link
}

# Create http proxy
resource "google_compute_region_target_http_proxy" "lb" {
  name                  = "lb-http-proxy"
  region                = "asia-northeast1"
  url_map               = google_compute_region_url_map.lb.self_link
}


# Create forwarding lb "Frontend"
resource "google_compute_forwarding_rule" "lb-forwarding" {
  name                  = "lb-forwarding-rule"
  region                = "asia-northeast1"
  target                = google_compute_region_target_http_proxy.lb.id
  port_range            = "80"
  ip_protocol           = "TCP"
  load_balancing_scheme = "INTERNAL_MANAGED" # Current Gen LB (not classic)
  network               = google_compute_network.armageddon.id
  subnetwork            = google_compute_subnetwork.tokyo.id


  # During the destroy process, we need to ensure LB is deleted first, before proxy-only subnet
  depends_on = [
    google_compute_subnetwork.tokyo,
    google_compute_subnetwork.regional_proxy_subnet,
    google_compute_region_backend_service.lb-backend-service
  ]
  
}