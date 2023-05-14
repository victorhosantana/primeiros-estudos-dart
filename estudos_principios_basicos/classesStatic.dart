import 'dart:io';

void main() {
  print("\n"
      "Medida da área do círculo, utilizando um método da classe e propriedades de cada instância desta mesma classe:\n"
      "Informe o valor do raio:");

  String? respostaRaioTexto = stdin.readLineSync();
  if (respostaRaioTexto != null) {
    double respostaRaio = double.parse(respostaRaioTexto);

    Circulo circulo01 = Circulo(respostaRaio);

  print(
      "O raio indicado foi $respostaRaio e a área do círculo é de: ${circulo01.Area()}m2.");
  print(
      "Este mesmo cálculo de área tem o resultado ${Circulo.AreaClasse(respostaRaio)}m2, se utilizarmos o método da classe.");
  }
}

class Circulo {
  static double pi = 3.1415;
  double raio;

  Circulo(this.raio);

  double Area() {
    return double.parse((pi * raio * raio).toStringAsFixed(2));
  }

  static double AreaClasse(double raioClasse) {
    return double.parse((pi * raioClasse * raioClasse).toStringAsFixed(2));
  }
}
