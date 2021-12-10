*** Cria um arquivo gerenciado pelo terraform

```tf
resource "local_file" "teste" {
  filename = "teste1.txt"
  content = "Eu gosto do impossivel porque lá a concorrência é menor"
}
