data "kubernetes_service" "app" {
  metadata{
    name = kubernetes_service.app.metadata[0].name
  }
}

output "do_cluster" {
  value = var.cluster_name
}

output "lb_public_ip" {
  value = kubernetes_service.app.status.0.load_balancer.0.ingress.0.ip
}