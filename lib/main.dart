import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

  // Methods of String which are avalaible on datatype String.
  print(stringVariable.contains("Hello"));

  // There are no long or float data types in dart.
  int x = 5;
  x.toString();
  x.isEven;
  // both int and double inherits num dataypes.
  num hello = 4;
  num hello2 = 4.4;

  dynamic worstToUse = "Something or anything can be here!!";
  worstToUse = 5;
  worstToUse = true;
  // We will not get error at any place. Should not be used or least to use.
}
