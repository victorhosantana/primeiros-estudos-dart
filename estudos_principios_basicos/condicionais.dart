void main() {
  // Testando condicionais com IF/ELSE
  String paisNascimento = "Japão";
  bool brasileiro;

  if (paisNascimento == "Brasil") {
    brasileiro = true;
  } else {
    brasileiro = false;
  }

  if (brasileiro) {
    print("Você nasceu no país $paisNascimento, então você é brasileiro.");
  } else {
    print("Você nasceu no país $paisNascimento, então você não é brasileiro.");
  }

  print("\n");

  // Testando condicionais com SWITCH/CASE
  String vogal = "e";

  switch (vogal) {
    case "a":
      {
        print("Primeira da lista de vogais.");
      }
      break;

    case "u":
      {
        print("Última da lista de vogais.");
      }
      break;
      
    default:
      {
        print("No meio da lista de vogais.");
      }
  }
}
