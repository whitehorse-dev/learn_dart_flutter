import 'package:learn_dart_flutter/main.dart';

void ExampleMethod() {
  Example x = Example(5, 2);
  x._private; // Error here because private fields are package private!!
}
