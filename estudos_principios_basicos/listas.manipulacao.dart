void main() {
  List<int> numerozinhos = [10, 15, 20, 25];
  print(numerozinhos);
  print(numerozinhos.runtimeType);

  print("\n---\n");

  // forEach() - Executa uma função para cada elemento da lista.
  numerozinhos.forEach((numero) {
    print(numero);
  });
}
