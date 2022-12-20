int calculate() {
  int idade;
  idade = 31;
  return idade;
}

void demonstraConversoes() {
  int numero = 31;
  print("$numero\n"
      "${numero.runtimeType}");
  String textoDoNumero = numero.toString();
  print("$textoDoNumero\n"
      "${textoDoNumero.runtimeType}");
}
