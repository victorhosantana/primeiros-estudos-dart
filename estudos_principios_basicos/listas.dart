void main() {
  // Listas de Tipo Único em Dart só utilizam um mesmo tipo de objetos.
  List<String> nomesDeAmigos = ["Victor", "Fulano", "Ciclano"];
  print(nomesDeAmigos);
  print({nomesDeAmigos.runtimeType});
  print({nomesDeAmigos.length});
  print(nomesDeAmigos[0]);
  print(nomesDeAmigos[0].runtimeType);

  print("\n---\n");

  // Listas de Tipo Dynamic podem ter mais de um tipo de objeto, com maior demanda para o Dart processar as informações.
  List<dynamic> etapasDoDia = ["Hamburguer", 5, 7.5, true];
  print("$etapasDoDia\n"
      "${etapasDoDia.runtimeType}\n"
      "Uma boa comida? ${etapasDoDia[0]}\n"
      "Dias de trabalho numa semana: ${etapasDoDia[1]}\n"
      "Tem por por programação? ${etapasDoDia[3]}\n"
      "Média de horas de sono: ${etapasDoDia[2]}");

  print("\n---\n");

  print(""
      "${etapasDoDia[0].runtimeType}\n"
      "${etapasDoDia[1].runtimeType}\n"
      "${etapasDoDia[2].runtimeType}\n"
      "${etapasDoDia[3].runtimeType}\n");
}
