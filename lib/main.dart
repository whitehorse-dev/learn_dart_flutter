import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);
// Control Flow Constructs
// Basic building blocks of logic
// Loops Classics.
// Usually very less use of loops because mostly we write functions.

  for (int i = 0; i < 10; i++) {
    print("Value of i $i");
  } // These loops are for n number of times.

  // While loops are imp when you are not sure how many times the loops will move
  bool condition = true;
  while (condition) {
    /// acc to condition change value to true
    condition = false;
  } // you are not even going to write many while loops.
  /// usually we do it with functions only.

  /// Another loop which we will never use is DO WHILE LOOP.

  bool doLoop = false;
  do {
    print("Do done");
    doLoop = true;
  } while (false);
}
