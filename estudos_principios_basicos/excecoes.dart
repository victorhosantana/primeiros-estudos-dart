import 'dart:developer';
import 'dart:io';

void main() {
  // StackOverflow error
  // recursiveFunc(1);

  print("Started Main");
  // debugger(when: true);
  functionOne();
  print("Finished Main");
}

void functionOne() {
  print("Started function 01");

  // Lidando com exceções com Try On Catch
  try {
    functionTwo();
  } on FormatException catch (e) { // O "e" funciona em Escopo
    print("This line has a FormatException error");
    print(e.runtimeType);
    print(e.message);
    print(e.offset);
    print(e.source);
    print(e.toString());
  } on IOException catch (e) { // O "e" funciona em Escopo
    print("IOException found.");
    print(e.runtimeType);
    print(e.toString());
  } on Exception catch (e) { // O "e" funciona em Escopo
    print("Main Exception found.");
    print(e.toString());
  }

  print("Finished function 01");
}

void functionTwo() {
  print("Started function 02");
  for (int count = 1; count <= 5; count++) {
    print(count);

    /*
  FormaException error
  Ao surgir esta exceção, a IDE vai mostrar o rastro da pilha de execução (StackTrace) 
  */
    double convertedNumber = double.parse("A text that is not a number");
  }

  print("Finished function 02");
}

// recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }
