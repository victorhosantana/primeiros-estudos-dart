import 'package:primeira_aplicacao_dart/bib_de_ajuda.dart' as bib;

void main(List<String> arguments) {
  print('Hello world: ${bib.calculate()}!');
  print("\n");
  double dinheiro = 4e3;
  print(dinheiro);
  bool iguais = 4000 == dinheiro;
  String frase =
      'O primeiro resultado é ${bib.calculate() == dinheiro} e o segundo é $iguais.';
  print(frase);
  bib.demonstraConversoes();
}
