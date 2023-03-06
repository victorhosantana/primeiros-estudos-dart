void main() {
// Sets são um tipo de coleção iterável que não repete itens
  Set<String> cidadesVisitadas = <String>{};

  print(cidadesVisitadas.iterator);
  print(cidadesVisitadas.isEmpty);
  registrarCidades("Recife", cidadesVisitadas);
  print(cidadesVisitadas.isEmpty);
  registrarCidades("Recife", cidadesVisitadas); //Valor de teste repetido
  registrarCidades("Lisboa", cidadesVisitadas);
  registrarCidades("Recife", cidadesVisitadas); //valor de teste repetido
  registrarCidades("Chile", cidadesVisitadas); //valor de teste repetido
  registrarCidades("Lisboa", cidadesVisitadas);

  print("As cidades visitadas são:\n$cidadesVisitadas");
  print(cidadesVisitadas.isNotEmpty);
  print(cidadesVisitadas.length);
}

Set<String> registrarCidades(String destino, Set<String> preencheBancodeDados) {
  preencheBancodeDados.add(destino);
  return preencheBancodeDados;
}
