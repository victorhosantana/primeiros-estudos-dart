void main() {
  Frutas limao1 = Frutas("Limão", 23.2, "azedo");
  Frutas banana1 = Frutas("Banana", 65.10, "doce");
  Chocolates amargo1 = Chocolates("Amargo", 190);
  Chocolates branco1 = Chocolates("Branco", 190);

  limao1.fazerRecheio();
  limao1.assarMassa();
  amargo1.fazerRecheio();
  amargo1.assarMassa();
  branco1.fazerRecheio();
  branco1.assarMassa();
}

// Superclasse
class Recheios {
  String nome;
  double peso;

  Recheios(this.nome, this.peso);
}

// Subclasse 1
class Frutas extends Recheios implements Bolo {
  String sabor;
  Frutas(String nome, double peso, this.sabor) : super(nome, peso);

  @override
  void fazerRecheio() {
    print("Para fazer um bolo $sabor de fruta, primeiro é preciso descascar a $nome.");
  }

  @override
  void assarMassa(){
    print("Por fim, juntar o total de $peso gramas de recheio à farinha, ovos e açúcar e colocar para assar.");
  }
  }


// Subclasse 2
class Chocolates extends Recheios implements Bolo {
  String? cor;
  Chocolates(String nome, double peso, {this.cor}) : super(nome, peso);
  
  @override
  void fazerRecheio(){
    print("Para fazer um bolo de chocolate, primeiro é preciso cortar o $nome em pedaços pequenos.");
  }

  @override
  void assarMassa(){
    print("Por fim, juntar o total de $peso gramas de recheio à farinha, ovos e açúcar e colocar para assar.");
  }
}

// Classe Abstrata ou Interface
abstract class Bolo {
  void fazerRecheio();
  void assarMassa();

  /* Para utilizar estes métodos com diversos tipos de classes, é necessário sobrescrever a função de acordo com cada item.
  Para isso, a função @override pode ser usado antes de chamar e atualizar os comandos do método. 
  
  Esta habilidade é chamada de POLIMORFISMO.
  
  */
}
