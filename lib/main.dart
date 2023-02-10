import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String instantiatedString = 'Saurabh'; // here we have instantiated string.

  const myUser =
      User(name: "Nivedita Dutta", photoUrl: "http://www.google.com");

  const myUser2 =
      User(name: "Saurabh Pandey", photoUrl: "http://www.google.com");

  myUser2.hasLongName();
}

class User {
  final String name;
  final String photoUrl;

  const User({required this.name, required this.photoUrl});

  bool hasLongName() {
    return name.length > 10;
  }

  /// Using methods directly on the class name.
  /// We have to use it class wide and not specific to a particular user object.
  /// This is easy by using STATIC Keyword
  ///
  static void myMethod() {}
  static const minNameLength = 3; // automatic int typecast.
}
