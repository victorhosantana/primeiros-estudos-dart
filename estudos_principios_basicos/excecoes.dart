import 'dart:developer';

void main() {
  // FormaException error
  //double convertedNumber = double.parse("19,45");

  // StackOverflow error
  // recursiveFunc(1);

  print("Started Main");
  // debugger(when: true);
  functionOne();
  print("Finished Main");
}

void functionOne() {
  print("Started function 01");
  functionTwo();
  print("Finished function 01");
}

void functionTwo() {
  print("Started function 02");
  for (int count = 1; count <= 5; count++) {
    print(count);
  }
  print("Finished function 02");
}

// recursiveFunc(int count) {
//   print(count);
//   recursiveFunc(count + 1);
// }
