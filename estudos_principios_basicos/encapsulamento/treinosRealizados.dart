import 'tipoTreino.dart';

class Atleta {
  // Variável e Método Estático, comum a todos os objetos e não instanciado
  static String localTreino = "Parque do Monsanto de Lisboa";
  static localdeTreino() {
    print(localTreino);
  }

  // Declaração de variáveis instanciadas para cada objeto
  String nome;
  int _calorias = 0;
  int _treinoTotal = 0; // variável privada

  Atleta({required this.nome});

  // Método GET para visualizar uma variável privada fora da classe
  List get estatisticaTreinos {
    return [_calorias, _treinoTotal];
  }

  // Método SET para alterar uma variável privada fora da classe
  void set adicionarCalorias(int caloriasAdicionais) {
    _calorias += caloriasAdicionais;
  }

  void registrarTreino(Treino treinoRealizado) {
    switch (treinoRealizado) {
      case Treino.musculacao:
        print('Fulano acabou de treinar musculação.\n');
        _calorias += 55;
        _treinoTotal++;
        break;
      case Treino.bicicleta:
        print('Fulano acabou de treinar bicicleta.\n');
        _calorias += 75;
        _treinoTotal++;
        break;
      case Treino.basquete:
        print('Fulano acabou de treinar basquete.\n');
        _calorias += 50;
        _treinoTotal++;
        break;
      case Treino.corrida:
        print('Fulano acabou de treinar corrida.\n');
        _calorias += 60;
        _treinoTotal++;
        break;
      case Treino.natacao:
        print('Fulano acabou de treinar natação.\n');
        _calorias += 80;
        _treinoTotal++;
        break;
      case Treino.patins:
        print('Fulano acabou de treinar patins.\n');
        _calorias += 25;
        _treinoTotal++;
        break;
      default:
        {
          print('Hora de treinar! Escolha um exercício.');
          break;
        }
    }
  }
}
