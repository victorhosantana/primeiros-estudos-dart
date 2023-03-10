import 'dart:io';

// Funções podem ser definidas no mesmo arquivo Dart, fora da Main, ou num arquivo separado
bool funcMaiorDeIdade(int? idade) {
  if (idade != null && idade >= 18) {
    return true;
  } else {
    return false;
  }
}

/* Ao especificar o tipo antes do nome da função, este será o retorno da função
  Se não especificar nada ou especificar 'void', a função retornará 'vazio' */

/* 
  TIPOS DE PARÂMETROS NAS CHAMADAS DE FUNÇÕES
  1 - Posicionais Obrigatórios
  2 - Nomeados Opcionais
  3 - Parâmetros "Padrão"
  4 - Modificador "required"
 */

// Função com parâmetros Posicionais Obrigatórios
void funcMaiorIdadeComTexto(String? nomeDaPessoa, int? idade) {
  if (idade != null) {
    if (idade >= 18) {
      print("$nomeDaPessoa, você é maior de idade!");
    } else {
      print("$nomeDaPessoa, você NÃO é maior de idade!");
    }
  }
}

// Função com parâmetro Nomeado Opcional/parâmetro Padrão/parâmetro Required
void funcEscolhaDeVeiculo(String? nome, int? idade,
    {bool? querHabilitacao, String veiculoDePreferencia = "qualquer um", required String cor}) {
  if (querHabilitacao != null && querHabilitacao && idade != null && idade >= 18) {
    print(
        ("$nome, você tem $idade anos, você já pode ter uma habilitação e seu veículo de interesse é $veiculoDePreferencia na cor $cor."));
  } else {
    if (idade != null) {
      print(
          ("$nome, você tem $idade anos e seu veículo de interesse é $veiculoDePreferencia na cor $cor."));
    }
  }
}

void main() {
  print("\nInforme o seu nome: ");
  String? nome = stdin.readLineSync();
  print("\nInforme a sua idade: ");
  String? idadeEntrada = stdin.readLineSync();
  int? anos;
  if (idadeEntrada != null) {
    anos = int.parse(idadeEntrada);
    print(
        "Olá, $nome! Como a sua idade é $anos, o comparativo se você é maior de idade é: ${funcMaiorDeIdade(anos)}");
  }

  print("\nOutras chamadas de funções\n");
  funcMaiorIdadeComTexto(nome, anos);
  funcMaiorIdadeComTexto("Fulano", 17);
  funcEscolhaDeVeiculo(nome, anos, querHabilitacao: funcMaiorDeIdade(anos), cor: "preta");
  funcEscolhaDeVeiculo("fulano", 17, querHabilitacao: true, veiculoDePreferencia: "Moto", cor: "verde");
}
