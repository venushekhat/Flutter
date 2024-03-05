// Write a Program to show swap of two No's without using third variable.
import 'dart:io';

void main() {

  var a,b;

  print("Enter the First Number  : "); //a
  a=int.parse(stdin.readLineSync()!);

  print("Enter the Secound Number  : ");//b
  b=int.parse(stdin.readLineSync()!);

  print("Before swapping:");
  print("a = $a");
  print("b = $b");

  // Swapping without using a third variable
  a = a + b;
  b = a - b;
  a = a - b;

  print("After swapping:");
  print("a = $a");
  print("b = $b");
}
