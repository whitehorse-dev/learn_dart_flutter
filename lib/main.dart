import 'package:flutter/material.dart';

void main(List<String> arguments) {
  /// Classes - whenever we have a concrete instance of a class we call it objects.
  /// Like above String is a class.
  ///
  String instantiatedString = 'Saurabh'; // here we have instantiated string.

  /// For Classes we import a constructor which is used for creating classes.
  ///
  User myUser =
      User(); // this is how we instantiate classes by calling constructor.
  // We can have multiple users too.
  final myUser2 = User();
}

/// First CLASS.
///
class User {
  String name = 'Saurabh';
  int age = 20;
  String photoUrl = 'http://google.com/jpg';

  /// This is a class having 3 fields, fields are basically variables.
  /// Time: 1hr 57 minutes.
  /// These fields are intiialised as soon as an object is instantiated.
  ///
  ///
}
