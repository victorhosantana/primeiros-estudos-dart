void main() {
  // Listas de Tipo Único em Dart só utilizam um mesmo tipo de objetos.

  List<String> nomesDeAmigos = ["Victor", "Fulano", "Ciclano"];
  print(nomesDeAmigos);
  print({nomesDeAmigos.runtimeType});
  print({nomesDeAmigos.length});
  print(nomesDeAmigos[0]);
  print(nomesDeAmigos[0].runtimeType);
}
