// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  final saurabh = Person(name: 'Saruabh', age: 30);
  // saurabh.age = 29;

  /// In flutter is especailly useful to prevent updating the age and name of the person
  /// So add final to the fields.
  ///
  /// Instead of modifying directly saurabh's age we now take a different person.
  ///
  final updatedSaurabh = saurabh.copyWith(age: saurabh.age + 1);

  /// The updatedSaurabh is a copy of the earlier Saurabh with new age.
  ///
  /// MUTABLE - when you can directly assign the value then its mutable.
  ///
  /// IMMUTABLE - when you can't directly assign and go via other way.
  ///
}

@immutable // This means the class has only final fields and doesnt update values
class Person {
  final String name;
  final int age;
  const Person({
    required this.name,
    required this.age,
  });

  Person copyWith({
    String? name,
    int? age,
  }) {
    return Person(
      name: name ?? this.name,
      age: age ?? this.age,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'age': age,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'] as String,
      age: map['age'] as int,
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) =>
      Person.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'Person(name: $name, age: $age)';

// Now 2 objects of this are not only equal when there reference is equal but
// also equal when their values are equal.
  @override
  bool operator ==(covariant Person other) {
    if (identical(this, other)) return true;

    return other.name == name && other.age == age; // equal value check.
  }

  @override
  int get hashCode => name.hashCode ^ age.hashCode;
}

/// The above way is not a good way because its a long way and copies the person
/// values and its long to write.
