resource "helm_release" "dragonball" {
  name       = "dragonball"
  #create_namespace = true
  namespace  = "db" #konoha
  repository = "https://konoha-23.github.io/springapp-mysql/" #updated repository link
  chart      = "springapp-mysql"
  values = [
    "${file("dragonball.yml")}"
  ]
}
