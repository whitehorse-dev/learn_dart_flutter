import 'package:flutter/material.dart';

void main(List<String> arguments) {
  /// Classes - whenever we have a concrete instance of a class we call it objects.
  /// Like above String is a class.
  ///
  String instantiatedString = 'Saurabh'; // here we have instantiated string.

  /// For Classes we import a constructor which is used for creating classes.
  ///
  const myUser =
      User(name: "Nivedita Dutta", photoUrl: "http://www.google.com");
  // this is how we instantiate classes by calling constructor.
  // We can have multiple users too.
  const myUser2 =
      User(name: "Saurabh Pandey", photoUrl: "http://www.google.com");

  myUser2.hasLongName();

  /// These names and photoUrl are mutatbles and can be changed.
  ///
  // myUser.name = "SKP";
  // myUser2.name = "ND";

  /// But there are many instances where you donot want to change name once its instantiated.
  ///
  /// We can use FINAL keyword even for the fields.
}

/// First CLASS.
///
class User {
  //  late String name; // Using late fields means we will initialize it later on.
  // Still better than nullables. Use late sparingly.

  final String name;
  final String photoUrl;

  // If all the fields are final then we can make the constructor FINAL.

  /// Creating a custom constructor here
  ///
  // User(String name, String photoUrl) {
  //   name = name;
  //   photoUrl = photoUrl;
  // }
  // Shorthand for above is
  const User({required this.name, required this.photoUrl});

  /// Const constructors are called with a const keyworrd and whenever they are called
  /// you are going to incur slight performance boost.
  /// CONST keywords are a MUST because it has huge perforance improvement.
  ///
  /// In case of flutter we have a SizedBox(width: 8) this is const. So even if we
  /// use it at 10000 places in the app. It will everytime give the same object.
  /// object 2 === obj 3 will give true for Const objects.
  ///
  /// Huge Performance benefits.
  ///
  ///
  /// Functions within a Class.
  ///
  bool hasLongName() {
    return name.length > 10;
  }
}
