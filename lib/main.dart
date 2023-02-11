// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  ImplementingClass() as RandomClass;
}

// In Kotlin, Java, typescript have INTERFACE
// C and Objective C has protocols

/// DART HAS IMPLICIT INTERFACES.
/// we can implement any kind of class as an interface.
/// Interface basically means properties and methods of the class without
/// their implementation.
///
/// Nothing gets copied when we implement a class ie use interace.
/// We have to give all definitons again newly.
///
/// We need to provide our own new implementation.
///
///

class RandomClass {
  String a;
  String b;
  RandomClass({
    required this.a,
    required this.b,
  });

  String get ab => '$a $b';

  void printValue() {
    print('Printed Value');
  }
}

class ImplementingClass implements RandomClass {
  // This will automatically copy all methods and properties and
  // force you to write implementation again.
  @override
  String a;

  @override
  String b;

  @override
  // TODO: implement ab
  String get ab => throw UnimplementedError();

  @override
  void printValue() {
    // TODO: implement printValue
  }
}

/// Care must be taken that UNLESS YOU HAVE A VERY GOOD REASON TO DO SO
/// Like in test classes. you should only implement abstract classes and not regular
/// classes.
///
///
/// eg
///
abstract class DataReader<T> {
  T ReadData();
  // We are returning dynamic here because there cna be multiple data readers like
  /// int data reader, StringDataReader etc...
  ///
  /// As Dynamic is not good to use we can use Generic Types.
}

class IntegerDataReader implements DataReader<int> {
  @override
  // ALWAYS write return type as a good measure.
  int ReadData() {
    print('Yeah!! I am reading the population data');
    return 12345;
  }
}

class StringDataReader implements DataReader<String> {
  @override
  String ReadData() {
    // TODO: implement ReadData
    return 'String Returned';
  }
}


/// All these use the same class but has different generic data types. 
/// DART DOESNT Support multiple INHERITANCE!!! GREAT THING!! 
