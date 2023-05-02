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

  print("\n-----\n");
  print("Utilização do Map como método de uma Classe");
  Humano humano01 = Humano("Fulano", 27, true);
  Humano humano02 = Humano("Beltrano", 32, false);
  print(
      "A primeira instância da Classe Humano é: ${humano01.nome}, ${humano01.idade} e ${humano01.contaCriada}.");
  print(
      "A segunda instância da Classe Humano é: ${humano02.nome}, ${humano02.idade} e ${humano02.contaCriada}.");
  print("\nConversão em Map\n");
  Map<String, dynamic> novoHumano = humano01.toMap();
  print(novoHumano);
  print(novoHumano.runtimeType);
  print(novoHumano.length);
  print(novoHumano.keys);
  print(novoHumano.values);
}

Set<String> registrarCidades(String destino, Set<String> preencheBancodeDados) {
  preencheBancodeDados.add(destino);
  return preencheBancodeDados;
}

// Criação de uma classe com um método para converter as propriedades em um Map
class Humano {
  String nome;
  int idade;
  bool contaCriada;

  Humano(this.nome, this.idade, this.contaCriada);

  Map<String, dynamic> toMap() {
    return {
      "nome": this.nome,
      "idade": this.idade,
      "contaCriada": this.contaCriada
    };
  }
}
