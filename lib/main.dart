import 'package:flutter/material.dart';

void main(List<String> arguments) {
  String stringVariable = "Hello WhiteHorse!!";
  print(stringVariable);
// Control Flow Constructs
// Basic building blocks of logic

  final myInteger = 5;
  if (myInteger == 10)
    print("Its 10!!");
  else
    print("It is some other Number!! and number is $myInteger");

// To restrict using long if else statements we use SWITCH
  switch (myInteger) {
    case 10:
      print(myInteger);
      break;
    case 12:
      print(myInteger);
      break;
    case 13:
      print(myInteger);
      break;

    default:
      print("Oh its someother integer altogether");
      break;
  }
  // Problem with check is that we can only check equality and not other things.
}
