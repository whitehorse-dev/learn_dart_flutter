import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

  String nullVariable = null; // ERROR
  nullVariable.length;
  // THe problem with null is that the devloper doenst get the error rather the
  // user gets all the errors at run time.
  // NULL was a billion dollar mistake in programming.

  // Run time errors are bad and if you can get them at compile time which is
  // what nullability accomplishes then its best.
  // This is used in Dart.

  String? nullVariable2 = null;
  // ? this nullablity operator is a safety check whihc signifies that if the
  // value is null then automatically skip that part rather than crashing the application

  nullVariable2?.length;

  String? nullVariable3;
  // we donot need to explicitly assign as null beacuse null is the default value.
}
