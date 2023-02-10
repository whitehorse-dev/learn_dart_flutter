import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

  String returnStringNestedFunction() {
    return "Hello";
  }
  // Nested Functions can only be called inside where declared.
  // Functions are methods are basically the same thing.
  // They provide the scope for codes.
  // Scoping everything is very imp, in functions and also in classes.
}

/// We use very less loops and mostly use functions

/// Above we already have a funciton - void main.
/// Top Level Functions are which are not nested inside other functions.
/// Strings returning Strings
String returnString() {
  return "Hello";
}

/// ERROR - The declaration 'returnString' isn't referenced.
/// This means that the funciton is not getting used at any place.
