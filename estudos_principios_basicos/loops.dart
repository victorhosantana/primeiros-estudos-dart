void main() {
  // Testando laços de repetição FOR

  int quantidadeRepeticoes = 0;

  //Iterável local
  for (int iteravel = 1; iteravel <= 5; iteravel++) {
    print(iteravel);
    quantidadeRepeticoes++;
  }

  print("\nEste laço FOR executou o comando $quantidadeRepeticoes vezes.\n");

  quantidadeRepeticoes = 1;
  //Iterável global
  for (quantidadeRepeticoes;
      quantidadeRepeticoes < 10;
      quantidadeRepeticoes++) {
    print(quantidadeRepeticoes);
  }

  print("\nEste laço FOR executou o comando $quantidadeRepeticoes vezes.\n");

  // Testando laços de repetição WHILE
  int comandos = 10;
  while (comandos > 0) {
    print("Ainda restam $comandos comandos.");
    comandos--;
  }

  // Testando laços de repetição DO-WHILE
  int energia = 100;
  do {
    if (energia == 100) {
      print("\n");
    }
    print("Já que minha energia é $energia, vou dar mais uma volta.");
    energia -= 10;
  } while (energia > 0);

  // Testando BREAK E CONTINUE em laços de repetição WHILE
  int contagem = 1;
  int somaTotal = 0;
  do {
    if (contagem == 1) {
      print("\n");
    }

    if (contagem == 4) {
      print("Não é pra somar o número 4. Vamos ao próximo.");
      contagem++;
      continue;
    }

    if (contagem == 7) {
      print("Já que chegamos ao número 7, vamos somar e encerrar aqui.");
      somaTotal += contagem;
      break;
    }

    print("Somando o número $contagem.");

    somaTotal += contagem;
    contagem++;
  } while (contagem <= 10);
  print("\nA soma da contagem deu $somaTotal.");
}
