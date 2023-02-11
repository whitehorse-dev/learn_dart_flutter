import 'package:flutter/material.dart';

void main(List<String> arguments) {
  User x = User(firstName: "Saurabh", lastName: "Pandey");
  x.fullName;
  x.getFullName();

  // first FullName is much better and lightweight.
  x.fullName; // this is indistingusable from below one!! regular field.
  x.lastName;
  x._email =
      "saurabh@gmail.com"; // Here we can access the private field but normally
  // this is not the case because classes are in different file and usage is in other files.

// Using setter method
  x.setEmail('saurabh');

  // Using set Property - better usage and this is how it should be done.
  x.emailSet = 'saurabh@gmail.com';
}

class User {
  final String firstName;
  final String lastName;
  String? _email;

  User({required this.firstName, required this.lastName});

  /// According to dart guidelines Methods should perform some actual work and the
  /// above moethod is acutally not doing anything!!
  ///
  /// Properties are nice methods same as above but they are light weight.
  ///
  String get fullName =>
      '$firstName $lastName'; // VS Code will show it as a property signified by wrench.
  /// It will be saved like a property and not as a fully blown method.
  ///
  ///
  void setEmail(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }

  // Instead of above method we can also create a property like

  set emailSet(String value) {
    if (value.contains('@')) {
      _email = value;
    } else {
      _email = null;
    }
  }

  /// we pass values into set properties
  /// we get values out of get properties like get Fullname was string.
}
