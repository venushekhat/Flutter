// Write a program to find the Max number from the given three
// number using Ternary Operator

import 'dart:io';

void main() {
  var n1, n2, n3;

  print("Enter the First Number : "); //number1
  n1 = int.parse(stdin.readLineSync()!);

  print("Enter the Second Number : "); //number2
  n2 = int.parse(stdin.readLineSync()!);

  print("Enter the Third Number : "); //number3
  n3 = int.parse(stdin.readLineSync()!);

//condition check by turnery oparator

  (n1 > n2)? print("n1 max $n1"): (n2 > n3)? print("n2 max $n2"): (n3 > n1) ? 
   print("n3 max $n3"): print("They are all equal"); 
}
