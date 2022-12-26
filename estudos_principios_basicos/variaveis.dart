void main() {
  //Declarações de variáveis no Dart necessitam de especificação do tipo
  int numeroInteiro = 42;
  double moedaAtual = 4.37;
  bool completoVideo = true;
  String cursoAtual = "Dart + Flutter";

  print("---\n"
      "$numeroInteiro\n"
      "$moedaAtual\n"
      "$completoVideo\n"
      "$cursoAtual");
  print("---");

// var serve para que o Dart identifique o tipo da variável
  var algumaRespostaDoUsuario = 6;
  print("$algumaRespostaDoUsuario\n"
      "${algumaRespostaDoUsuario.runtimeType}");
  print("---");

// const serve para impossibilitar a alteração de uma variável
  const String umNome = "Fulano da Silva";
  print(umNome);
  print("---");

// final serve para declarar uma variável e impossibilitar sua alteração quando receber o atributo
  final double dinheiroNaCarteira;

  print("Quanto dinheiro vocè tem na carteira?");
  dinheiroNaCarteira = 10.75;
  print(dinheiroNaCarteira);
  print("---");
}
