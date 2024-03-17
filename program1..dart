/*
## Program 1: Display Personal Information
Write a Dart program using variables to display your name, age, school, and a hobby. Print it in one logical sentence.
*/
import 'dart:io';

void main(){
  print('Enter your name: ');
  String name = stdin.readLineSync()!;
  print('Enter your age: ');
  int age = int.parse(stdin.readLineSync()!);
  print('Enter your school: ');
  String school = stdin.readLineSync()!;
  print('Enter your hobby: ');
  String hobby = stdin.readLineSync()!;

  print("Hi $name, you're $age, your school is $school and your hobby is $hobby.");
}