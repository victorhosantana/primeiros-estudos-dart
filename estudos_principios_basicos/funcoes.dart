import 'dart:io';

// Funções podem ser definidas no mesmo arquivo Dart, fora da Main, ou num arquivo separado
bool funcMaiorDeIdade(int idade) {
  if (idade >= 18) {
    return true;
  } else {
    return false;
  }
}

void main() {
  print("\nInforme o seu nome: ");
  String? nome = stdin.readLineSync();
  print("\nInforme a sua idade: ");
  String? idadeEntrada = stdin.readLineSync();
  int anos;
  if (idadeEntrada != null) {
    anos = int.parse(idadeEntrada);
    print(
      "Olá, $nome! Como a sua idade é $anos, o comparativo se você é maior de idade é: ${funcMaiorDeIdade(anos)}");
  }

}
