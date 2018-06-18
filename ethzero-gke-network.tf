resource "google_compute_subnetwork" "whatever-gke-net" {
  name          = "whatever-gke-net"
  ip_cidr_range = "172.16.18.0/24"
  network       = "default"
  region        = "europe-north1"
}



