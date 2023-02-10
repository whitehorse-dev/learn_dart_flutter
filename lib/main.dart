import 'package:flutter/material.dart';

void main(List<String> arguments) {
  User x = User(firstName: "Saurabh", lastName: "Pandey");
  x.fullName;
  x.getFullName();

  // first FullName is much better and lightweight.
  x.fullName; // this is indistingusable from below one!! regular field.
  x.lastName;
}

class User {
  final String firstName;
  final String lastName;

  User({required this.firstName, required this.lastName});

  String getFullName() => '$firstName $lastName';

  /// According to dart guidelines Methods should perform some actual work and the
  /// above moethod is acutally not doing anything!!
  ///
  /// Properties are nice methods same as above but they are light weight.
  ///
  String get fullName =>
      '$firstName $lastName'; // VS Code will show it as a property signified by wrench.
  /// It will be saved like a property and not as a fully blown method.
  ///
}
