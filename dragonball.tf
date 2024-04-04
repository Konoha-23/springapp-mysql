resource "helm_release" "dragonball-mysql" {
  name       = "dragonball-mysql"
  #create_namespace = true
  namespace  = "dragonball" #konoha
  repository = "https://konoha-23.github.io/springapp-mongo/"
  chart      = "springapp-mysql"
  values = [
    "${file("dragonball-mysql.yml")}"
  ]
}
