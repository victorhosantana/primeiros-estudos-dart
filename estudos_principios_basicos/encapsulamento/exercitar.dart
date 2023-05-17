import 'dart:io';
import 'tipoTreino.dart';
import 'treinosRealizados.dart';

void main(List<String> args) {
  bool rotinaExercicios = true;
  Atleta fulano01 = Atleta(nome: "Fulano");

  do {
    // Cabeçalho do Menu Principal
    print("\n" + "-" * 5);
    print("Rotina de Exercícios");
    print("-" * 5 + "\n");
    print("Informe a opção desejada:");
    print("[ 1 ] - Registrar exercício\n"
        "[ 2 ] - Ver estatísticas\n"
        "[ 3 ] - Sair\n");

    String? respostaMenu = stdin.readLineSync();

    if (respostaMenu != null) {
      switch (respostaMenu) {
        case "1":
          // Cabeçalho do Menu Exercitar
          print("\n- Opções de treino -\n"
              "[ 1 ] - Musculação\n"
              "[ 2 ] - Bicicleta]\n"
              "[ 3 ] - Basquete]\n"
              "[ 4 ] - Corrida]\n"
              "[ 5 ] - Natação]\n"
              "[ 6 ] - Patins]\n"
              "Informe o exercício:");

          String? respostaExercicio = stdin.readLineSync();

          if (respostaExercicio != null) {
            switch (respostaExercicio) {
              case "1":
              fulano01.registrarTreino(Treino.musculacao);
                break;
              case "2":
              fulano01.registrarTreino(Treino.bicicleta);
                break;
              case "3":
              fulano01.registrarTreino(Treino.basquete);
                break;
              case "4":
              fulano01.registrarTreino(Treino.corrida);
                break;
              case "5":
              fulano01.registrarTreino(Treino.natacao);
                break;
              case "6":
              fulano01.registrarTreino(Treino.patins);
                break;
              default:
                print("Exercício não listado no menu. Tente novamente.");
            }
          } else {
            print("Opção inválida! Tente novamente.");
          }
          break;
        case "2":
          print(
              "\nJá foram realizados ${fulano01.estatisticaTreinos[1]} treinos, com gasto total de ${fulano01.estatisticaTreinos[0]} calorias.");
          break;
        case "3":
          print("\nSaindo do menu. Obrigado!");
          rotinaExercicios = false;
          break;
        default:
          print("Resposta não está entre as opções do menu. Tente novamente.");
      }
    } else {
      print("Resposta inválida! Tente novamente.");
    }
  } while (rotinaExercicios != false);
}
