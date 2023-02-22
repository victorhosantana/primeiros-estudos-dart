void main() {
  Alimentos alimento01 = Alimentos("Ovo", 25.2, "salgado");
  Frutas fruta01 = Frutas("Morango", 8.7, "doce", isMadura: true);

  alimento01.ExplicaAlimentos();
  fruta01.ExplicaAlimentos();
}

/* Criação de Classes e utilização de Heranças

  As Heranças podem ajudar a reduzir a quantidade de código necessário para a utilização de diversas classes com propriedades iguais.

  Entre os relacionamentos da Herança, as propriedades e métodos são compartilhados em nível de parentesco horizontal (Mãe -> Filha). Porém, esta relação não é recíproca e nem possível em níveis horizontais (Irmã -> Irmã).
*/

// Superclasse ou classe Mãe
class Alimentos {
  String nome;
  double peso;
  String sabor;

  // Construtor Direto
  Alimentos(this.nome, this.peso, this.sabor);

  void ExplicaAlimentos() {
    print("O alimento $nome tem $peso gramas de peso e o sabor é $sabor.");
  }
}

// Subclasse ou Classe Filha
class Frutas extends Alimentos {
  bool? isMadura;

  // Construtor herdando valores da Superclasse + Novo Construtor Required
  Frutas(String nome, double peso, String sabor, {this.isMadura})
      : super(nome, peso, sabor);
}
