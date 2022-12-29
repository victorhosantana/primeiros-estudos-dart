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
}
