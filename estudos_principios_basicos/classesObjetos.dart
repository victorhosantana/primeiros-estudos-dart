void main() {
  print("Criação de objetos com Construtor Direto.\n");
  Pessoa pessoa01 = Pessoa("Fulano", 27, 1.80, 70);
  Pessoa pessoa02 = Pessoa("Ciclano", 31, 1.71, 86.4);
  Pessoa pessoa03 = Pessoa("Beltrano", 40, 1.93, 94.2);

  print(pessoa01);
  print(pessoa02.nome);
  print(pessoa03.idade);

  print("\nCriação de objetos com Construtor Nomeado.\n");
  Pessoa pessoa04 =
      Pessoa.nomeado(nome: "Fulaninha", idade: 21, altura: 1.57, peso: 53.4);
  Pessoa pessoa05 =
      Pessoa.nomeado(nome: "Ciclaninha", idade: 44, altura: 1.52, peso: 64.6);
  Pessoa pessoa06 =
      Pessoa.nomeado(nome: "Beltraninha", idade: 32, altura: 1.69, peso: 61.8);
  print(pessoa04);
  print(pessoa05.nome);
  print(pessoa06.idade);
  print(pessoa06.imc);
}

/* Definição de uma classe para criação de diversos objetos com as mesmas propriedades */
class Pessoa {
  String nome;
  int idade;
  double altura;
  double peso;
  double? imc;

  /* Construtor direto para a utilização de parâmetros posicionais obrigatórios */
  Pessoa(this.nome, this.idade, this.altura, this.peso);

  /* Construtor adicionar nomeado, utilizando o tipo de parâmetro Required */
  Pessoa.nomeado(
      {required this.nome,
      required this.idade,
      required this.altura,
      required this.peso}) {
    this.imc = double.parse((peso / (altura * altura)).toStringAsFixed(2));
  }

  /* Todo construtor precisar preencher todas as propriedade não-nulas */
}
