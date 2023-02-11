part 'other_file.dart';

// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  /// In dart we only have package private access modifiers.
}


/// This is package private class having private field and even pvt constrcutor
class _PackagePrivateClass {
  final String _packagePrivateField;
  _PackagePrivateClass._(this._packagePrivateField);
}

// How to have a link bw files so that the classes are accessible in other classes. 
