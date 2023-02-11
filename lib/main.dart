// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

// required: associates our `main.dart` with the code generated by Freezed
part 'main.freezed.dart';
// optional: Since our Person class is serializable, we must add this line.
// But if Person was not serializable, we could skip it.
part 'main.g.dart';

void main(List<String> arguments) {
  /// Using Freezed pub.dev to automatic update the data class whenever there is any changes to it.
  ///
}

/// Creating a class which the freeze can take and automatically generate other classes
/// for us
///
///

// @freezed
// class Person with _$Person {
//   /// Every single Freezed class should have a constant private constrcutor. which is going to
//   /// be private.
//   /// Fields are not going to be defined as normal classes rather enter fields in factory constructor.
//   ///
//   const Person._();

//   const factory Person({
//     required String name,
//     required int age,
//   }) = _Person;
// }

/// Kotlin we donot see the generated code but here we will see.
///
///
// This file is "main.dart"

@freezed
class Person with _$Person {
  const factory Person({
    required String firstName,
    required String lastName,
    required int age,
  }) = _Person;

  factory Person.fromJson(Map<String, Object?> json) => _$PersonFromJson(json);
}

/// Many times you get errors because you have not properly imported all the files
/// Check for imports and problems will be solved 