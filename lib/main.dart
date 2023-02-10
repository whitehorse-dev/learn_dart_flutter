import 'package:flutter/material.dart';

void main(List<String> arguments) {
  /// Classes - whenever we have a concrete instance of a class we call it objects.
  /// Like above String is a class.
  ///
  String instantiatedString = 'Saurabh'; // here we have instantiated string.

  /// For Classes we import a constructor which is used for creating classes.
  ///
  final myUser = User(
      firstName: "Nivedita",
      lastName: " Dutta",
      photoUrl: "http://www.google.com");
  ; // this is how we instantiate classes by calling constructor.
  // We can have multiple users too.
  final myUser2 = User(
      firstName: "Saurabh",
      lastName: "Pandey",
      photoUrl: "http://www.google.com");
}

/// First CLASS.
///
class User {
  //  late String name; // Using late fields means we will initialize it later on.
  // Still better than nullables. Use late sparingly.

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
  User(
      {required String firstName,
      required String lastName,
      required this.photoUrl})
      : name = '$firstName + $lastName';
// This is how you do in dart when it comes to initializing fields.

  // Above are the positional parameters.
  // Suppose that user is providing first name and last name but we only have name field
  // so in that case we will have to concatenate
  /// Normally the constructors donot have a body, so not a good practice.
}
