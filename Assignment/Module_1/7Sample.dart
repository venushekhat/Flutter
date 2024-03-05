// a program to convert temperature from degree centigrade to Fahrenheit.(fahrenheit = (celsius * 9/5) + 32)

import 'dart:io';

void main() {

  // ignore: unused_local_variable
  var celsius,fahrenheit;

  print("Enter the Temperature in Celsius : "); //celsius
  celsius = double.parse(stdin.readLineSync()!);

  print("$celsius degrees Celsius is fahrenheit ${(fahrenheit = (celsius * 9/5) + 32)} degrees Fahrenheit");// fahrenheit

}