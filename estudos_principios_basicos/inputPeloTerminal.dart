import 'dart:io';

void main() {
  // Leitura de uma String com origem no terminal
  print("Qual o seu nome?");
  String? nome = stdin.readLineSync();
  print("Muito prazer, $nome!\n"
      "Gostaria de calcular o seu IMC? (S/N)");

  String? resposta = stdin.readLineSync();
  resposta = resposta?.toUpperCase();

  if (resposta != null) {
    switch (resposta) {
      case "S":
        {
          print("Ótimo!\n"
              "Preciso que me informe a sua altura em metros: ");
          String? respostaAltura = stdin.readLineSync();

          print("E agora, o seu peso em Kg: ");
          String? respostaPeso = stdin.readLineSync();

          if (respostaAltura != null && respostaPeso != null) {
            double imc = double.parse(respostaPeso) /
                (double.parse(respostaAltura) * double.parse(respostaAltura));

            print("$nome, o seu IMC é ${imc.toStringAsFixed(2)}.");
          } else {
            print("Não foi possível calcular o seu IMC.");
          }
        }
        break;
      case "N":
        {
          print("Tudo bem! Até a próxima.");
        }
        break;
      default:
        {
          print("Esta não é uma opção válida!");
        }
    }
  } else {
    print("Não consegui entender a sua resposta.");
  }
}
