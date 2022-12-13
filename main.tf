provider "null" {}

resource "null_resource" "date"{
 provisioner "local-exec" {
  command = "echo `date`"
 }
}


module "local" {
  source   = "./local"
  count = 3
  name     = "file${count.index +1}.txt"
}

