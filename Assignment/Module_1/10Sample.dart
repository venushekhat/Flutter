//  a Program to check the given number is Positive, Negative.

import 'dart:io';

void main() {
  var number;

  print("Enter the Number : "); //User Input Number..
  number = int.parse(stdin.readLineSync()!);

  if (number > 0) {
    print("The Number is Positive."); //Positive
  } else if (number < 0) {
    print("The Number is Negative."); //Negative
  } else {
    print("The number is zero."); //zero
  }
}
