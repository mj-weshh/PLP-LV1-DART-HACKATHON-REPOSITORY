/*
## Program 2: Perform Mathematical Operations with Functions
Write a Dart program that performs two mathematical operations using functions.
*/

import 'dart:io';

dynamic calculate(num1, num2, operator_sign) {
  if (operator_sign == '+') {
    var sum = num1 + num2;
    print('Sum is: $sum');
  } 
  else if (operator_sign == '-') {
    var difference = num1 - num2;
    print('Difference is: $difference');
  } 
  else if (operator_sign == '*') {
    var product = num1 * num2;
    print('Product is: $product');
  } 
  else if (operator_sign == '/') {
    if (num2 != 0) {
      var quotient = num1 / num2;
      print('Quotient is: $quotient');
    } else {
      print("Error: Cannot divide by zero!");
    }
  } 
  else if (operator_sign == '%') {
    if (num2 != 0) {
      var modulus = num1 % num2;
      print('Modulus is: $modulus');
    } else {
      print("Error: Cannot calculate modulus with zero!");
    }
  } 
  else {
    print("Invalid operator!!");
  }
}

double first_digit_input() {
  stdout.writeln("Enter the first digit: ");
  var first_digit = double.parse(stdin.readLineSync()!);
  return first_digit;
}

double second_digit_input() {
  stdout.writeln("Enter the second digit: ");
  var second_digit = double.parse(stdin.readLineSync()!);
  return second_digit;
}

String operator_sign_input() {
  stdout.writeln("Enter the operation you wish to apply: ");
  String oper = stdin.readLineSync()!;
  return oper;
}

void main() {
  print('Enter the number of operations you want to perform: ');
  var number_of_calculations = int.parse(stdin.readLineSync()!);
  for(var i = 1;i <= number_of_calculations; i++){
  var one = first_digit_input();
  String operator = operator_sign_input();
  var two = second_digit_input();

  calculate(one, two, operator);
  }
}