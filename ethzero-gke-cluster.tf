resource "google_container_node_pool" "whatever-gke-nodepool" {
  name       = "whatever-gke-nodepool"
  zone       = "europe-north1-a"
  cluster    = "${google_container_cluster.whatever-gke-cluster.name}"
  node_count = 1
}


resource "google_container_cluster" "whatever-gke-cluster" {
 name = "whatever-gke-cluster"
 zone = "europe-north1-a"
 initial_node_count = 2

depends_on = ["google_compute_subnetwork.whatever-gke-net"] 
subnetwork = "whatever-gke-net"

 master_auth {
 username = "username"
 password = "p4ssw0rd"
 }

 node_config {
 oauth_scopes = [
 "https://www.googleapis.com/auth/compute",
 "https://www.googleapis.com/auth/devstorage.read_only",
 "https://www.googleapis.com/auth/logging.write",
 "https://www.googleapis.com/auth/monitoring"
 ]

 machine_type = "n1-standard-1"
 }
 }
