resource "helm_release" "dragonball-mysql" {
  name       = "dragonball-mysql"
  #create_namespace = true
  namespace  = "db" #konoha
  repository = "https://konoha-23.github.io/springapp-mysql/"
  chart      = "springapp-mysql"
  values = [
    "${file("dragonball-mysql.yml")}"
  ]
}
