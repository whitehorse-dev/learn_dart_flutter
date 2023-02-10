import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);

// We have been declaring variables but now we can do it wihout that too.

  var string = "Hello Saurabh";
  // this will automatically take it as String. But this is not dynamic!!
  string = "Value Changed!!";
  // if you donot want to change the values then you can use FINAL instaed of var.

  final noChangeString = "This cannot be changed";
  // noChangeString = "Second Value";// We will get error here
  // Final Variables must be initialised on the same line.
  // you cannot late initialize it.

  // Initializing vs non initialised variable.
  String saurabh = "Something"; // this is initialized in same line.
  String lateInitialize; //Type: String

  //ERRROR!!!!!!!!!!!!!!!!!!!!!!!!!
  //print(lateInitialize)// Here we will get error
  //The non-nullable local variable 'lateInitialize' must be assigned before it can be used.

  lateInitialize =
      "We will not get error for not initializing and datatype will remain string but in case of var";

  var lateInitializeVar; //Type: dynamic
  lateInitializeVar = "SKP";
  // Here it will take dynamic as its data type.
}
