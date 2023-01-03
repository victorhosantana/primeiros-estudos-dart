void main() {
  List<int> numerozinhos = [10, 15, 20, 25];
  print("Lista original de números");
  print(numerozinhos);
  print(numerozinhos.runtimeType);

  print("\n---\n");

  // forEach() - Executa uma função para cada elemento da lista.
  print("Função forEach()");
  numerozinhos.forEach((numero) {
    print("Temos o número: $numero");
  });

  // map() - Cria uma nova lista após executar um comando para cada elemento da lista.
  print("\nFunção map()");
  List<int> dobroDaLista = numerozinhos.map((numero) => (numero * 2)).toList();
  print("O dobro da lista é:\n$dobroDaLista");

  // contains() - Verifica se um elemento consta na lista.
  print("\nFunção contains()");
  int confere = 15;
  print(
      "O número $confere consta na lista?\n${numerozinhos.contains(confere)}");

  // sort() - Reordena os elementos da lista com base numa função de ordenação.
  print("\nFunção sort()");
  numerozinhos.sort((numero1, numero2) => numero2 - numero1);
  print("Reordenando a lista de forma decrescente:\n$numerozinhos");
  numerozinhos.sort((numero1, numero2) => numero1 - numero2);

  // reduce() e fold() - Reduz os elementos da lista para um único resultado com base numa função.
  print("\nFunção reduce()");
  var somaTotal = numerozinhos
      .reduce((numeroAtual, numeroSeguinte) => numeroAtual + numeroSeguinte);
  print("A soma de todos os elementos da lista é: $somaTotal");
  print(somaTotal.runtimeType);

  print("\nFunção fold()");
  const int valorInicial = 100;
  var SomaTotalComInicial = numerozinhos.fold(valorInicial, (numeroAtual, numeroSeguinte) => numeroAtual + numeroSeguinte);
  print("A soma de todos os elementos da lista, partindo do número 100 é: $SomaTotalComInicial");
  print(SomaTotalComInicial.runtimeType);

}
