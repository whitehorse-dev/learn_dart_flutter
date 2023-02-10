import 'package:flutter/material.dart';

void main(List<String> arguments) {
  /// Classes - whenever we have a concrete instance of a class we call it objects.
  /// Like above String is a class.
  ///
  String instantiatedString = 'Saurabh'; // here we have instantiated string.

  /// For Classes we import a constructor which is used for creating classes.
  ///
  final myUser =
      User(name: "Nivedita Dutta", photoUrl: "http://www.google.com");
  ; // this is how we instantiate classes by calling constructor.
  // We can have multiple users too.
  final myUser2 =
      User(name: "Saurabh Pandey", photoUrl: "http://www.google.com");
}

/// First CLASS.
///
class User {
  String name;
  int age = 20;
  String photoUrl;

  /// Creating a custom constructor here
  ///
  // User(String name, String photoUrl) {
  //   name = name;
  //   photoUrl = photoUrl;
  // }
  // Shorthand for above is
  User({required this.name, required this.photoUrl});
  // Above are the positional parameters.
}
