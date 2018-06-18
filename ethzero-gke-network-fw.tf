resource "google_compute_firewall" "whatever-gke-ingress-pub" {
  name    = "whatever-gke-ingress-pub"
  network = "default"

  allow {
    protocol = "tcp"
    ports    = ["80", "8080"]
  }

  target_service_accounts = ["serviceaccount@developer.gserviceaccount.com"]
}
