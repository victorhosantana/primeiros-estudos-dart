void main() {
  decidirTreinoAcademiaEnum(Transportes.Biceps);
  decidirTreinoAcademiaEnum(Transportes.Pernas);
  decidirTreinoAcademiaEnum(Transportes.Core);
}

/* o comando Enum serve para listar diversas possibilidades e tornar o código mais legível
  Este tipo de Dado serve como um conjunto de identificadores finitos */
enum Transportes{
  Biceps,
  Triceps,
  Costas,
  Peito,
  Pernas,
  Core,
}

void decidirTreinoAcademiaEnum(Transportes treino){
  String? parteDoCorpo;

  /* o comando SWITCH CASE substitui a necessidade de realizar diversos testes por IF e ELSE IF
    Esta é uma estrutura condicional que realiza operaçóes para cada caso */
  switch (treino) {
    case Transportes.Biceps:
      parteDoCorpo = "Bíceps";
      break;
    case Transportes.Triceps:
      parteDoCorpo = "Tríceps";
      break;
    case Transportes.Costas:
      parteDoCorpo = "Costas";
      break;
    case Transportes.Peito:
      parteDoCorpo = "Peito";
      break;
    case Transportes.Pernas:
      parteDoCorpo = "Pernas";
      break;
    case Transportes.Core:
      parteDoCorpo = "Core";
      break;
    
    default:
      parteDoCorpo = "Qualquer Coisa";
  }

  print("Hoje vou treinar $parteDoCorpo na academia!");
}