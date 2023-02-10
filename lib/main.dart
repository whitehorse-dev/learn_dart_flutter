import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);
}

/// DART Functions
/// Speciality is that functions can be passed into other functions.
/// Even though DART is not a functional programming language and a OOPs based language
/// still because of functions inside a function it acheives many paradigms.
///
/// You can also RETURN Functions from other FUNCTIONS.
///

// int Function(int) // this means int Function is the return type of the function 1hr 7 minutes.
// then writing the full function as
int Function(int) twice(int Function(int) f) {
  // return (int x) {
  //   return 1;
  // };

  /// Now we are going to define an annonymous function too!!
  /// Anonymous because it doesn't have a name.
  /// We use anonymmous functions where it is just not imp to return the function whihc
  /// is just going to be used once!!
  ///

  /// But because there is already a function as parameter we will have to process it
  /// more
  return (int x) {
    return f(f(x));
  };
}

/// The above function returns int Function and also takes into argument an int Function f!!
///
///
/// TYPE DEF = Defintion easily readable and usable.
///

typedef IntTransformer = int Function(int);

IntTransformer twiceTyped(IntTransformer f) {
  return (int x) {
    return f(f(x));
  };
}

/// If you have really long function signature - Type Def comes as a huge savior. 
/// 
/// This is the toughest module to understand 