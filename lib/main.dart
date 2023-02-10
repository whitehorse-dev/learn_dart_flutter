import 'package:flutter/material.dart';

void main(List<String> arguments) {
  final x = Example(5, 2);
  x._private; // this is avalaible here no problem.
}

// using private fields instead of public
class Example {
  int publicField;
  int _private; // underscore means private!!

  Example(this.publicField, this._private);
  // multiple constructors in the classes.

  // Named parameters cannot be private.
  Example.namedConstructor(
      {required this.publicField, required this._private}); // ERROR
  // Solution is
  Example.namedConstructor2(
      {required this.publicField, required int privateParam})
      : _private = privateParam; // ERROR Solved

  // IN DART THERE IS NO CLASS PRIVATE FEILDS THERE ARE ONLY PACKAGE PRIVATE FIELDS!!
  //PACKAGE PRIVATE means EACH FILE IN DART IS PACKAGE. So in the same file it can be accessed but not in other files!!
}
