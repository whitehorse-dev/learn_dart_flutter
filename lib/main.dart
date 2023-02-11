// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main(List<String> arguments) {
  // Mixins are similar to classes but to avoid multiple inheritance it can be used.
  /// It uses with.... WITH
  ///
  ///
  /// class x with ElevatedClient {}
  ///
  /// This is what Mixin does 3:16 minutes.
  ///   You can think of Mixins as copyign a method adn pasting it
  /// but it makes it pasting multiple times not required.
  ///
  /// It copies and pastes the members of mixins.
  ///
  var dog = Dog();
  dog.breathe();
  dog.bark();

  var snake = Snake();
  snake.display();
}

// Creating a Bark mixin
mixin Bark {
  void bark() => print('Barking');
}

mixin Fly {
  void fly() => print('Flying');
}

mixin Crawl {
  void crawl() => print('Crawling');
}

// Creating an Animal class
class Animal {
  void breathe() {
    print("Breathing");
  }
}

// Createing a Dog class, which extends the Animal class
// Bark is the mixin with the method that Dog can implement
class Dog extends Animal with Bark {}

// Creating a Bat class Bat, which extends the Animal class
// Fly is the mixin with the method that Bat can implement
class Bat extends Animal with Fly {}

class Snake extends Animal with Crawl {
  // Invoking the methods within the display
  void display() {
    print(".....Snake.....");
    breathe();
    crawl();
  }
}
