// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  print('Printer afer 5 seconds');
  futureFunction();
}

/// Future Functions
///
void futureFunction() {
  Future.delayed(const Duration(seconds: 5), () {
    print("Good you have waited for 5 seconds");
  });
}
