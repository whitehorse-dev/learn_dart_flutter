import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> arguments) {
  // MAPS

  /// MAPS are used for mapping KEYS to theri VALUES.
  /// Even in JSONs we have mapping style linkages.
  ///

  // JSON IN DART is usually represented in
  /// Map<String, dynamic>
  /// ie string keys and dynamic values.
  ///Dynamic values because in the key value pair we can have anything stored.

  Map<String, dynamic> myMap = {
    'name': "Saurabh",
    'age': 30,
    'registered': true,
  };

  // to get name from the map
  final name = myMap['name'];
  print(name);
}
