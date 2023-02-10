import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

  /// List<String> arguments these are parameters of functions. VERY IMP
  /// 3 types of parameters are:
  ///
}

// Void returning functions positonal paramters.
/// Postional parameters are basically parameters defined as int, doubles, floats, String
/// Parameters are passed inside functions and value can be altered.
///

void positionalParameterFunctions(int x, double y, String someString) {
  positionalParameterFunctions(4, 4.4, "Hello White Horse");

  /// These are positonal because dart finds out what you have passed in depending
  /// upon the position.
  /// We always have to provide all the parameters.
  ///
  /// Parameters vs Arguments
  /// Parameters are what are used within the functions.
  /// Arguments are what are passed to the functions.
}

/// 2 most imp things for these type of functions are that the required ones must
/// come before the optional ones.
/// Those optional must be put inside [] square brackets
void optionalPositionalParamsFunction(int x, double y,
    [String greeting = "Hi"]) {
  optionalPositionalParamsFunction(5, 3.5);
}
// Shortcut to copy above line is Shift+Alt down arrow.

/// Named Parameters
/// We will be able to call our functions in any order because they are named.
/// We do it by putting {} curly braces instead of [] square braces
/// But again values can't be null so either provide value or name them nullable.
/// The best thing with nullable operator ? is that the value will not be accessed
/// and the program will not crash if the value is null - billion dollar problem

void namedPostionalParams({int? x, double? y, String? greetings}) {
  namedPostionalParams(x: 5, y: 10, greetings: "WhiteHorse");
}

/// Named Required Functions
/// Shortcut: Alt + Ctrl --> This way multiple the cursors downward direction.
/// Alt and choose positons using mouse.
/// just write required in front of all params then they will be must enter values.
/// no need for nullables now because value will be provided for sure.

void namedRequiredParams(
    {required int x, required double y, required String greetings}) {
  namedRequiredParams(x: 5, y: 10, greetings: "WhiteHorse");
}

/// Combining the positional and named parameter.
/// It must comes first.

void positionalNamedRequiredParams(int some,
    {required int x, required double y, required String greetings}) {
  positionalNamedRequiredParams(10, x: 5, y: 10, greetings: "WhiteHorse");
}
