import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

// OPERATORS.
  int result, x;
  result = 5 + 5 - 2;

  // truncating divison
  result = 5 ~/ 5;
  // THis will remove all decimal places adn give interger.

  // Unirary Operatior
  x = 10;
  x++;
  x--;
  x += 5;
  x -= 5;

  // Boolean Operators equal, not equal.
  bool isEqual = 5 == 10;
  bool notEqual = 5 != 10;
  bool greater = 5 >= 10;

  // Concatenate String
  String concatinatedString = "Hello" + "Saurabh";

  // String Interpolation
  String interPolatedString = 'Hello Saurabh $greater';
  // Here we are converting an expression into a string.
  String longerInterpolation = 'Hello Saurabh ${5 + 10 + 33 / 45}';
}
