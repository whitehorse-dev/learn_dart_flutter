// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  final saurabh = Person(name: 'Saruabh', age: 30);
  saurabh.age = 29;

  /// In flutter is especailly useful to prevent updating the age and name of the person
  /// So add final to the fields.
  ///
  /// Instead of modifying directly saurabh's age we now take a different person.
  ///
  final updatedSaurabh = Person(age: saurabh.age + 1, name: saurabh.name);

  /// The updatedSaurabh is a copy of the earlier Saurabh with new age.
  ///
  /// MUTABLE - when you can directly assign the value then its mutable.
  ///
  /// IMMUTABLE - when you can't directly assign and go via other way.
}

@immutable // This means the class has only final fields and doesnt update values
class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });
}


/// The above way is not a good way because its a long way and copies the person
/// values and its long to write. 