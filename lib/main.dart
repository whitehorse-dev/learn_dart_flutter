import 'dart:ffi';

import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

  /// You are going to use the Lists the most!!
  /// List of int, doubles, Strings etc!!

  // How to use?
// There is nothing more low level that lists, only use lists.
  List myList = [1, 2, 3];
  // currently myList was dynamic type - NEVER HAVE THIS. Always state what type to use
  List<int> myListNonDynamic = [1, 2, 3];

  /// GIVE SMALL int and NOT BIG Int.
  myListNonDynamic.length;
  final firstElement = myListNonDynamic[0];

  /// DART SMART
  /// if we donot write type of variable like below example it will automatically
  /// generate the required type.
  ///
  final myListDartSmart = [1, 2, 3];
  // Dart automatically takes it as ----- List<int> myListDartSmart -----

  /// Many times specially in UI of Flutter we directly write lists as:
  ///

  <int>[1, 2, 3]; // This is also a valid list.
}
