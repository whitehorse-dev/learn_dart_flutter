// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  final x = 'Saurabh'.duplicate();
  print(x);
}

/// Eg String is a built in type and we cannot edit code for String.
/// however we can press F12 to go to definition of String.
///
/// How to add a method to a string to make our lives easier??
///
/// Like we donot have a string.duplicate() method to duplicate a string.
///
/// EXTENSION.
///
extension StringDuplication on String {
  String duplicate() {
    return this + this;
  }
}
