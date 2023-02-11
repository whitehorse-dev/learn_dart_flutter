// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  User x = const User(firstName: "Saurabh", lastName: "Pandey");

  User x2 = User(firstName: "Saurabh", lastName: "Pandey");

  User x3 = User(firstName: "Saurabh", lastName: "Pandey");

  /// Here all the users x1, x2 and x3 are same. Refers to the same value.
  ///
  print(x2 == x3);
  // Becuase they are instanciated with same cannonical instances.

  // But when we change the value of one of the parameter then the value changes.
  /// becuase I changed to first Name to Nivedita and now they are not the same anymore.
  /// BoxedSize(width:8) will be same but width 9 will take up different space!!
  ///
  ///
  /// But even with the same parameters if we conot use the const constructors then the
  /// objects would not be true rather false.
  ///
  ///  User x2 = User(firstName: "Saurabh", lastName: "Pandey");

  // User x3 = User(firstName: "Saurabh", lastName: "Pandey");
  /// The above would be false even if everythign is same.
  ///

  /// It is all about referential equality.
  /// Objects are not the same even though they hold the same data if constructors are
  /// not const.
  ///
  ///Many times we compare values instead of references.
  ///
  ///This is totally possible when we override the equality.
}

class User {
  final String firstName;
  final String lastName;

  const User({
    required this.firstName,
    required this.lastName,
  });

  // Objects constructed with const constructors are always same.

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName && other.lastName == lastName;
  }
  // we have overridded teh behavior of equality operator.

  @override
  int get hashCode => firstName.hashCode ^ lastName.hashCode;

  // Hashcodes are used
}
