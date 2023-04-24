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

// Maps são coleções Chave:Valor. Também conhecido como "Dicionários" em outras linguagens
  Map<String, dynamic> registrarPrecos = {};

  registrarPrecos["Recife"] = 1100;
  registrarPrecos["Lisboa"] = 1750.59;
  registrarPrecos["Chile"] = 1509.99;
  registrarPrecos["Recife"] = 900; // Atualização de valores no Map
  registrarPrecos["São Paulo"] = 1000;
  registrarPrecos.remove("São Paulo");

  print("\n-----\n");
  print(registrarPrecos);
  print(registrarPrecos.runtimeType);
  print(registrarPrecos.isEmpty);
  print(registrarPrecos.length);
  print(registrarPrecos.keys);
  print(registrarPrecos.values);
}

Set<String> registrarCidades(String destino, Set<String> preencheBancodeDados) {
  preencheBancodeDados.add(destino);
  return preencheBancodeDados;
}
